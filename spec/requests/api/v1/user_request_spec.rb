require 'rails_helper'

RSpec.describe Api::V1::UserController, type: :request do
  describe 'GET /api/v1/user' do
    let!(:user) { create(:user) }
    let(:object) { JSON.parse(response.body)}

    before(:each) do
      @current_user = FactoryBot.create(:user, email: 'Hello@itsme.com', password: 'boomboom',
                                        password_confirmation: 'boomboom'
                                       )
      @current_user.save
    end

    it 'Should return all users' do
      get '/api/v1/user', params: {
        email: user.email, password: user.password
      }, headers: headers

      expected_response = {
        'data' => {
          'id' => user.id, 'uid' => user.email, 'email' => user.email,
          'provider' => 'email', 'name' => nil, 'nickname' => nil,
          'image' => nil
        }
      }
      expect(object).to eq expected_response
    end
  end
end
