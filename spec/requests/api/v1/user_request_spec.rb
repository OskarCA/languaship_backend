RSpec.describe Api::V1::UserController, type: :request do
  describe 'GET /api/v1/user' do
    let!(:user) { create(:user) }
    let(:object) { JSON.parse(response.body)}

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
      expect(object).to eq expected_response
    end
  end
end
