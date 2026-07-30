# Request::Cnpj

[Leia em Português](README.pt-BR.md)

A Ruby client for looking up Brazilian company registration data (CNPJ) via the [OpenCNPJ API](https://api.opencnpj.org).

## Installation

Install the gem and add it to the application's Gemfile by executing:

```bash
bundle add request-cnpj
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install request-cnpj
```

Alternatively, add it directly to your Gemfile:

```ruby
gem 'request-cnpj'
```

And run:

```bash
bundle install
```

## Usage

```ruby
require 'request/cnpj'

client = Request::Cnpj::Client.new
client.find('12.345.678/0001-95')
# => { "cnpj" => "12345678000195", ... }
```

`find` accepts the CNPJ with or without punctuation — any non-digit characters are stripped before the request is made.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/moshepedroribeiro/request-cnpj. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Request::Cnpj project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](CODE_OF_CONDUCT.md).
