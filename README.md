# weather-on-rails
A weather application using ruby on rails stack.

## quick start

### prerequisites

* Ruby version 3.1.3
* Ruby on Rails version 7.0.4.2
* API key from weatherapi.com

### steps

* Clone this repository
```
git clone git@github.com:agnostic-assessment/weather-on-rails.git
```

* Update the weatherapi key in `app/controller/weather_controller.rb` with a valid one

* Enable caching in dev environment
```
rails dev:cache
```

* Start the server
```
rails server
```

* View the application in browser at [http://localhost:3000](http://localhost:3000)

## todo

- [ ] Develop test cases
- [ ] Get the weatherapi key from the environment and remove it from the repository
- [ ] Add navbar
- [ ] Refactor weatherapi access to its own class WeatherClient
- [ ] Implement HTTPS

