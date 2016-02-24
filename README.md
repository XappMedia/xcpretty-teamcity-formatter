# xcpretty-teamcity-formatter

Custom formatter for [xcpretty](https://github.com/supermarin/xcpretty) for use with TeamCity.  This formatter takes advantage of the [TeamCity reporting messages](https://confluence.jetbrains.com/display/TCDL/Build+Script+Interaction+with+TeamCity#BuildScriptInteractionwithTeamCity-reportingMessagesForBuildLogReportingMessagesForBuildLog) to report build steps and test results.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xcpretty-teamcity-formatter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xcpretty-teamcity-formatter

## Usage

```
#!/bin/bash

xcodebuild [flags] | xcpretty -f `xcpretty-travis-formatter`
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/xcpretty-teamcity-formatter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Resources

* [TeamCity: Reporting Test Results](https://confluence.jetbrains.com/display/TCDL/Build+Script+Interaction+with+TeamCity#BuildScriptInteractionwithTeamCity-ReportingTests)
* [xcpretty formatter class](https://github.com/supermarin/xcpretty/blob/master/lib/xcpretty/formatters/formatter.rb)
* [xcpretty-travis-formatter](https://github.com/kattrali/xcpretty-travis-formatter)