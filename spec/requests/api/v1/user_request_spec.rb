require 'rails_helper'

RSpec.describe Api::V1::UserController, type: :request do
  describe 'GET /api/v1/user' do
    let!(:user) { create(:user) }
    let(:object) { JSON.parse(response.body)}

    it 'Should return all user' do
      get '/api/v1/user', headers: {
        email: user.email, password: user.password
      }

      expected_response = eval(file_fixture('user.txt').read)
    end
  end
end
