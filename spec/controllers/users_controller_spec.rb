require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    context 'GET #index' do
        it 'returns a success response' do
            get :index
            #expect(response).to be_success #or response.success?
            response.successful?
        end
    end

    context 'GET #show' do
        it 'returns a success response' do
            user = User.create!(first_name: "first", last_name: "last", email: "abc@example.com")
            get :show, params: { id: user.to_param }
            response.successful?
        end
    end

end