# currency-api made in laravel php framework all files are in Project directory
**The CurrencyRateController controller** is responsible for handling HTTP requests related to currency exchange rates. This controller has two methods:

**index(Request $request)** - retrieves a list of currency exchange rates from the database, depending on the provided parameters. If no parameters are provided, a list of all currency exchange rates is returned. If the date parameter is provided, exchange rates for that day are returned. If the currency parameter is provided, exchange rates for the specified currency are returned. The method returns a JSON response.

**store(Request $request)** - adds a new currency exchange rate to the database. This method requires three parameters: currency (currency code), date (date), and amount (exchange rate value). If the provided currency exchange rate already exists in the database, an error with an appropriate message is returned. Otherwise, a new record with the currency exchange rate is created and the appropriate HTTP status (201 - CREATED) is returned.

**The AuthController controller** is responsible for authenticating the user and generating a token that can be used for subsequent requests. This controller has two methods:

**authenticate(Request $request)** - authenticates the user based on their email address. This method requires the email parameter. If the provided user exists in the database, a token is generated for them and returned in the HTTP response. In case of an incorrect email address or a user not found in the database, an appropriate HTTP status (401 - UNAUTHORIZED) is returned.

**logout(Request $request)** - logs out the user by invalidating the token. This method requires the user to have a valid token, which is destroyed upon logging out. The HTTP status (204 - NO CONTENT) is returned.

# Application routes consist of two elements:

**Middleware auth:sanctum** - blocks access to routes that require authentication. A user who tries to access such a route without a valid token will be redirected to the login page.

**Route /user** - returns information about the logged-in user. This path requires a valid token and returns user data in JSON format.

**Route /currency-rates** - allows access to all methods of the CurrencyRateController controller. Access to these methods requires a valid token.

**Route /login** - allows user authentication based on their email address. It returns a JSON response with a token if the authentication is successful.
