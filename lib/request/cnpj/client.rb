# frozen_string_literal: true

module Request
  module Cnpj
    # Client for fetching CNPJ data from the OpenCNPJ API.
    class Client < BaseClient
      attr_reader :url, :rest_client

      def initialize(rest_client: RestClient::Request)
        super()
        @rest_client = rest_client
      end

      # Method to request CNPJ to API
      def find(cnpj)
        JSON.parse(get("/#{cnpj.gsub(/[^0-9]/, '')}"))
      end
    end
  end
end
