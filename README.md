# Weather::Random

This gem provides a class WeatherRandom that uses the WeatherUnderground API to generate a seed for a "T"RNG.

## Installation/Use

Add this line to your application's Gemfile:

    gem 'weather_random'

Or add this to your `.rb` file:

    require 'weather_random'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install weather-random

## Usage

Create an object instance of `WeatherRandom::WeatherApi`, and initalize it with a Wunderground URL for now - future versions will let you set up your own entropy generator. Note that the URL has to have the string `#key` where your key will go, else you'll get the `WeatherRandom::ImproperApiURL` exception.

    # You can pick any city you like.
    entropy_object = WeatherRandom::WeatherApi.new('http://api.wunderground.com/api/#key/conditions/q/CA/San_Francisco.json', <key_value>)
    entropy_object.fetch_uri

    r=Random.new(entropy_object.make_seed)
    r.rand

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
