# frozen_string_literal: true

require_relative 'lib/request/cnpj/version'

Gem::Specification.new do |spec|
  spec.name = 'request-cnpj'
  spec.version = Request::Cnpj::VERSION
  spec.authors = ['Moisés Ribeiro']
  spec.email = ['moises.ribeiro.developer@gmail.com']

  spec.summary = 'Ruby client for looking up Brazilian company registration data (CNPJ) via the OpenCNPJ API.'
  spec.description = 'Request::Cnpj is a lightweight Ruby client for fetching CNPJ ' \
                      '(Cadastro Nacional da Pessoa Jurídica) data from the OpenCNPJ API.'
  spec.homepage = 'https://github.com/moshepedroribeiro/request-cnpj'
  spec.required_ruby_version = '>= 3.2.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ Gemfile .gitignore .rspec spec/ .rubocop.yml])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
