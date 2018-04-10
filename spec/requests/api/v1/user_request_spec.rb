require 'rails_helper'

RSpec.describe Api::V1::UserController, type: :request do
  describe 'GET /api/v1/user' do
    let!(:user) { create(:user) }
    let(:object) { JSON.parse(response.body)}
    let(:credentials) { user.create_new_auth_token }
    let(:headers) { { HTTP_ACCEPT: 'application/json' }.merge!(credentials) }

    it 'Should return all users' do
      get '/api/v1/user', headers: headers

      expected_response = eval(file_fixture('users.txt').read)
      expect(object).to eq expected_response
    end

    it 'Should return one user' do
      get "/api/v1/user/#{user.id}", headers: headers

      expected_response = eval(file_fixture('user.txt').read)
      expect(object).to eq expected_response
    end
  end
end
