static-heroku-rack-app
======================

This is a skeleton for a single page static Heroku app using [Rack](https://devcenter.heroku.com/articles/static-sites-ruby/) and [HTML5 Boilerplate](http://html5boilerplate.com/).

This app also uses the free [New Relic](https://addons.heroku.com/newrelic/) add-on (with a free [New Relic](http://newrelic.com/) account) to keep the free Heroku instance spun up using the New Relic Availability Monitoring.

See live example [here](http://static-heroku-rack-app.herokuapp.com/).


## Setup

Install the required gems:

1. `gem install bundler`
1. `bundle install`
1. `bundle exec rackup`
1. Visit <http://localhost:9292>

Push it to your [Heroku](http://heroku.com) account:

1. `gem install heroku`
1. `heroku login`
1. `heroku create --stack=cedar mynewapp`
1. `git push heroku master`


## New Relic Availability Monitoring

This app uses the free [New Relic](https://addons.heroku.com/newrelic/) add-on (with a free [New Relic](http://newrelic.com/) account) to keep the free Heroku instance spun up using the New Relic Availability Monitoring.

Heroku automatically spins down its free applications after 60 minutes of no traffic. New Relic's Availability Monitoring automatically pings the app every 30 seconds after setup, causing your Heroku instance to never idle.

To setup New Relic:

1. Create free [New Relic](http://newrelic.com/) account
1. Add free [New Relic](https://addons.heroku.com/newrelic/) Heroku add-on via command line

    ```bash
    heroku addons:add newrelic
    ```

1. Update your Heroku NEW_RELIC_APP_NAME config variable via command line

    ```bash
    heroku config:set NEW_RELIC_APP_NAME=enter-name-here
    ```

1. Update your Heroku NEW_RELIC_LICENSE_KEY config variable via command line (find your New Relic license key under Account Settings)

    ```bash
    heroku config:set NEW_RELIC_LICENSE_KEY=enter-license-key-here
    ```

1. View your New Relic dashboard - you should see your app name there.
1. Browse to Menu > Availability Monitoring (under Settings)
1. Click “Turn on Availability Monitoring”
1. Enter the URL to ping

New Relic should now be pinging your app every 30 seconds, making it so Heroku doesn't spin down the instance.


## Authors

  * Jessica Dillon / [@jessicard](//www.github.com/jessicard)


## Contributing

1. Fork it
1. Get it running
1. Create your feature branch (git checkout -b my-new-feature)
1. Write your code and specs
1. Commit your changes (git commit -am 'Add some feature')
1. Push to the branch (git push origin my-new-feature)
1. Create new Pull Request
1. If you find bugs, have feature requests or questions, please file an issue.


## License

MIT License

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
