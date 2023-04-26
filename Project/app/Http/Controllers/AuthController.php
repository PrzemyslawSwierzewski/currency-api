<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class AuthController extends Controller
{
    /**
     * Handle an authentication attempt.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function authenticate(Request $request)
    {
        $credentials = $request->only('email');
        
        $user = User::where('email', $credentials['email'])->first();
        if (!$user || $credentials['email'] !== $user->email) {
            return response()->json(['error' => 'Nieprawidlowy login lub haslo'], 401);
        }
        
        $token = $user->createToken('AuthToken')->plainTextToken;
        
        // Dodaj kod aktualizujący kolumnę api_token dla zalogowanego użytkownika
        $user->update(['api_token' => $token]);
        
        return response()->json(['token' => $token], 200);
    }
    

    /**
     * Handle a logout request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->json(null, 204);
    }
}