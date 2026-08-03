# frozen_string_literal: true

module Request
  module Cnpj
    # Base class for CNPJ request clients, providing shared execution logic.
    class ApplicationClient
      protected

      def get(path = nil, params: {}, headers: { accept: 'application/json' }, url: url(path, params:))
        execute(method: :get, url:, headers:)
      end

      def execute(**)
        response = rest_client.execute(**)

        return yield response if block_given?

        response.body
      end

      def url(path, params: {})
        URI('https://api.opencnpj.org').tap do |uri|
          uri.path += path
          uri.query = URI.encode_www_form(params) if params.any?
        end.to_s
      end
    end
  end
end
