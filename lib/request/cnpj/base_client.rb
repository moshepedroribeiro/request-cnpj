# frozen_string_literal: true

module Request
  module Cnpj
    # Base class for CNPJ request clients, providing shared execution logic.
    class BaseClient
      protected

      def get(path = nil, params: nil, headers: default_headers, url: url_for(path, **params.to_h), &)
        execute(method: :get, url:, headers:, &)
      end

      def execute(**)
        response = executor.execute(**default_execute_options, **)

        return yield response if block_given?

        response.body
      end

      def default_headers
        {
          accept: 'application/json'
        }
      end

      def default_execute_options
        {}
      end

      def url_for(path, **params)
        URI('https://api.opencnpj.org').tap do |uri|
          uri.path += path
          uri.query = params.to_query if params.any?
        end.to_s
      end
    end
  end
end
