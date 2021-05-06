require 'rails_helper'

RSpec.describe 'Veiculos API', type: :request do
  # initialize test data
  let!(:veiculos) { create_list(:veiculo, 10) }
  let(:veiculo_id) { veiculos.first.id }

  # Test suite for GET /veiculos
  describe 'GET /veiculos' do
    # make HTTP get request before each example
    before { get '/veiculos' }

    it 'returns veiculos' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /veiculos/:id
  describe 'GET /veiculos/:id' do
    before { get "/veiculos/#{veiculo_id}" }

    context 'when the record exists' do
      it 'returns the veiculo' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(veiculo_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:veiculo_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find veiculo/)
      end
    end
  end

  # Test suite for POST/veiculos
  describe 'POST /veiculos' do
    # valid payload
    let(:valid_attributes) { { marca: 'Lobini', veiculo: 'H1', ano: 2002, descricao: 'O único model da marca', vendido: true } }

    context 'when the request is valid' do
      before { post '/veiculos', params: valid_attributes }

      it 'creates a veiculo' do
        expect(json['marca']).to eq('Lobini')
        expect(json['veiculo']).to eq('H1')
        expect(json['ano']).to eq(2002)
        expect(json['descricao']).to eq('O único model da marca')
        expect(json['vendido']).to eq(true)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/veiculos', params: { marca: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: All fields are required/)
      end
    end
  end

  # Test suite for PUT /veiculos/:id
  describe 'PUT /veiculos/:id' do
    let(:valid_attributes) { { ano: 2012, descricao: 'O único model da marca ?', vendido: false  } }

    context 'when the record exists' do
      before { put "/veiculos/#{veiculo_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /veiculos/:id
  describe 'DELETE /veiculos/:id' do
    before { delete "/veiculos/#{veiculo_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
