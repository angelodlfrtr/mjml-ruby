# Mjml

Ruby parser for mjml templates [https://mjml.io/](https://mjml.io/)

## Installation

Install mjml bin from npm :

```bash
[sudo] npm install -g mjml
```

Add this line to your application's Gemfile:

```ruby
gem 'mjml', git: 'https://github.com/angelodlfrtr/mjml-ruby.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mjml

## Usage

```ruby
template = File.read('my_template.mjml')
parser   = Mjml::Parser.new(template)

parser.render # => return result as plain html
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mjml. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

