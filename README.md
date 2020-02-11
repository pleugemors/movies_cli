# MoviesCli

This gem is a simple cli that allows the programmer to venture into scraping the internet and manipulating the scraped data into object programming.  This particular gem scrapes a movie time website imdb and pulling theater information with the movies that they are playing and their times.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'movies_cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install movies_cli

## Usage

run either ./bin/movies_near_me or ruby ./bin/movies_near_me and it will prompt you to put in a zip code.  Enter in a zipcode and press enter.  A list of theaters will appear with a prompt of which theater would you like to get movies playing from.  Enter the number corresponding to the theater and a list of movies will pop up.  Select another movie to find out the times the movie is playing.  After this is done it will ask if you would like to try another zip code.  A "Y", "y", "yes", or "YES" will start you from the beginning.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'beaming-hashmap-9679'/movies_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MoviesCli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'beaming-hashmap-9679'/movies_cli/blob/master/CODE_OF_CONDUCT.md).
