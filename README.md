# GDEX: An elixir client for GDAX

## Getting Started

You can install GDEX from Hex:

```elixir
def deps do
  [{:gdex, "~> 0.1.0"}]
end
```

You are then ready to use the public endpoints:

```elixir
# Simple
Gdex.Currency.list |> Gdex.request #=> {:ok, response}

# Raise an error on unsuccessful response
Gdex.Currency.list |> Gdex.request! #=> response
```

Some operations can stream the response:

```elixir
Gdex.Market.trades("BTC-USD") |> Gdex.stream! #=> #Function<50.36144841/2 in Stream.resource/3>
```


## Configuration

To access the private endpoints of the API, you need the following configuration
variables in your `config/config.exs` file:

```elixir
config :gdex, api_key: "YOUR_API_KEY",
              api_secret: "YOUR_API_SECRET",
	      api_passphrase: "YOUR_API_PASSPHRASE"
```

Alternatively, you can pass a configuration when performing a request:

```elixir
config = [api_key: "KEY", api_secret: "SECRET", api_passphrase: "PASSPHRASE"]
Gdex.Account.list |> Gdex.request(config)
```

## License

Copyright 2017 Francesco Ceccon

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.