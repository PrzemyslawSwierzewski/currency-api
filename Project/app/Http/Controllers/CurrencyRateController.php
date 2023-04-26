<?php

namespace App\Http\Controllers;

use App\Models\CurrencyRate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException;

class CurrencyRateController extends Controller
{
    private $allowedCurrencies = ['EUR', 'USD', 'GBP'];

    public function __construct()
    {
        if (!Auth::guard('api')->check()) {
            throw new UnauthorizedHttpException('Unauthorized');
        }
        if (auth('api')->user()->role !== 'admin') {
            throw new UnauthorizedHttpException('Unauthorized');
        }
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if (empty($request->all())) {
            return response()->json(['error' => 'Empty request body'], 400);
        }
    
        $currencyRates = CurrencyRate::query();

        if ($request->has('date')) {
            $currencyRates->whereDate('date', $request->input('date'));
        }
        if ($request->has('currency')) {
            $currencyRates->where('currency', $request->input('currency'));
        }
    
        $currencyRates = $currencyRates->get();
    
        return response()->json($currencyRates);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'currency' => ['required', 'string', 'size:3', 'in:' . implode(',', $this->allowedCurrencies)],
            'date' => ['required', 'date'],
            'amount' => ['required', 'numeric', 'between:0,999999.99']
        ]);

        $currency = $validatedData['currency'];
        $date = $validatedData['date'];

        $existingRate = CurrencyRate::where('currency', $currency)
            ->whereDate('date', $date)
            ->first();

        if ($existingRate) {
            return response()->json(['error' => 'Kurs waluty zostal juz zapisany dzisiaj'], 400);
        } else {
            $currencyRate = new CurrencyRate;
            $currencyRate->currency = $currency;
            $currencyRate->date = $date;
            $currencyRate->amount = $validatedData['amount'];
            $currencyRate->save();

            return response()->json($currencyRate, 201);
        }
    }
}
