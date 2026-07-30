# frozen_string_literal: true

describe Request::Cnpj::Client do
  subject(:client) { described_class.new }
  let(:cnpj) { '00.000.000/0001-91' }
  let(:normalized_cnpj) { '00000000000191' }

  describe '#find' do
    it 'requests the normalized CNPJ and returns the parsed JSON body' do
      stub = stub_request(:get, "https://api.opencnpj.org/#{normalized_cnpj}")
             .with(headers: { 'Accept' => 'application/json' })
             .to_return(
               status: 200,
               body: { cnpj: normalized_cnpj, razao_social: 'BANCO DO BRASIL SA' }.to_json,
               headers: { 'Content-Type' => 'application/json' }
             )

      result = client.find(cnpj)
      expect(result).to eq('cnpj' => normalized_cnpj, 'razao_social' => 'BANCO DO BRASIL SA')
      expect(stub).to have_been_requested
    end

    it 'raises when the CNPJ is not found' do
      stub_request(:get, 'https://api.opencnpj.org/11111111111111')
        .to_return(status: 404, body: 'Not Found')

      expect { client.find('11.111.111/1111-11') }.to raise_error(RestClient::NotFound)
    end

    it 'raises when the API returns a server error' do
      stub_request(:get, "https://api.opencnpj.org/#{normalized_cnpj}")
        .to_return(status: 500, body: 'Internal Server Error')

      expect { client.find(cnpj) }.to raise_error(RestClient::InternalServerError)
    end
  end
end
