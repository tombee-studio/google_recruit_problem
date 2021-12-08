# GoogleRecruitProblem
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google_recruit_problem'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install google_recruit_problem

## Usage
### on CLI
Prepare text file including `exp.txt` below:
```:
2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435729003342952605956307381323286279434907632338298807531952510190
```

Also, type command below:
```bash:
$ google_recruit_problem < exp.txt
7427466391
```

### on code
This libary provides you `PrimarityTest` to test primarity of integer.

Before usage, import this library code below:
```ruby:
require "google_recruit_problem"
```

Write codes below to test primarity:
```ruby:
2.prime? # => true
3.prime? # => true
4.prime? # => false
```

And you can use with other methods below:
```ruby:
2.prime?(method='ortho')
2.prime?(method='fermat')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test-unit` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tomoya-kwansei/google_recruit_problem.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
