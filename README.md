[![Gem Version](https://badge.fury.io/rb/slothify.svg)](https://badge.fury.io/rb/slothify)

[![Build Status](https://travis-ci.org/krissy/slothify.svg?branch=master)](https://travis-ci.org/krissy/slothify)

# Slothify

Slothify is a little [refinement](http://ruby-doc.org/core-2.3.0/doc/syntax/refinements_rdoc.html) to ruby's String class that lets you express yourself a little slowerrrr.

## Installation and Setup

Add it to your project's Gemfile:

```ruby
gem 'slothify'
```

And execute:

	$ bundle

OR

Install the gem locally:

	$ gem install slothify


Unlike direct monkey patches, Ruby refinements allow you to redefine or add functionality to existing classes locally, without the risk of changing things on a global scope.

To activate a refinement, you need to add the `using Slothify` syntax at the top of your file, class or module.

## Example Usage

	require 'slothify'

	module YourModule
	using Slothify
		puts "Hello, fast world!".slothify
		# => "Helloooo, fastttt worldddd!"

    puts "Oh, hai.".slothify(10)
    # => "Ohhhhhhhhhhh, haiiiiiiiiiii."
	end

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/krissy/slothify.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
