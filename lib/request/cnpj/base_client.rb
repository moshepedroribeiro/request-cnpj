# frozen_string_literal: true

module Request
  module Cnpj
    # Base class for CNPJ request clients, providing shared execution logic.
    class BaseClient
      protected

      def get(path = nil, params: nil, headers: { accept: 'application/json' }, url: url(path, **params.to_h), &)
        execute(method: :get, url:, headers:, &)
      end

      def execute(**)
        response = rest_client.execute(**)

        return yield response if block_given?

        response.body
      end

      def url(path)
        URI('https://api.opencnpj.org').tap { |uri| uri.path += path }.to_s
      end
    end
  end
end
