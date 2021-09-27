require 'rails_helper'
require_relative '../support/devise'

RSpec.describe UsersController, type: :controller do

    let(:user) { create(:user) }

    # let(:user) {
    #     User.create(username: "joe", password: "123")
    # }

    #login user before each test
    before :each do
        login_as user
    end 

    describe 'POST #create' do 
        before do
            post :create, params: params
        end 
        
        context 'when params are correct' do 
            let(:params) { { user: { username: 'Joe' } } }

            it 'is expected to create new user successfully' do 
                expect(assigns[:user]).to be_instance_of(User)
            end

            it 'is expected to have username assigned to it' do 
                expect(assigns[:user].username).to eq('Joe')
            end
        end
    end 

    ######NEED TO IMPLEMENT LOGIN TEST


end 