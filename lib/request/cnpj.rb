# frozen_string_literal: true

require 'json'
require 'uri'
require 'rest-client'
require_relative 'cnpj/version'
require_relative 'cnpj/application_client'
require_relative 'cnpj/client'

module Request
  module Cnpj
    class Error < StandardError; end
  end
end
