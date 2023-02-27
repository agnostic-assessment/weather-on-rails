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

* Update the weatherapi key in `app/controllers/weather_controller.rb` with a valid one

* Enable caching in dev environment
```
rails dev:cache
```

* Run the tests
```
rails test
rails test:system
```

* Start the server
```
rails server
```

* View the application in browser at [http://localhost:3000](http://localhost:3000)

## todo

- [x] Develop test cases
- [x] Get the weatherapi key from the environment and remove it from the repository
- [ ] Improve usability of the application using error messages
- [x] Add navbar
- [x] Refactor weatherapi access to its own class WeatherFetcher
- [ ] Implement HTTPS
- [ ] Deploy the app to cloud

