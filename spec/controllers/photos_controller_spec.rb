require 'rails_helper'
require_relative '../support/devise'

RSpec.describe PhotosController, type: :controller do
    
    let(:user) { create(:user) }
    let(:photo) {
        Photo.create(user_id: user.id, username: user.username, image: "https://images.unsplash.com/photo-1503455637927-730bce8583c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1770&q=80")
    }

    #login user before each test
    before :each do
        login_as user
    end 

    describe 'GET /' do
        context 'from login user' do 
            it 'should return 200:OK' do 
                get :index
                expect(response).to have_http_status(:success)
            end
        end
    end

    ##### NEED TO IMPLEMENT THIS TEST
    # describe 'POST #create' do 
    #     it 'creates a new photo' do
    #         expect{
    #             post :create, params: { photo: { user_id: 
    #             photo.user_id, username: photo.username, image: photo.image}          
    #     }}.to change(Photo, :count).by(1)
    #     end    
    # end 


    ##### NEED TO IMPLEMENT THIS TEST
    # describe 'DELETE #destroy' do
    #     context  "success" do 
    #         it 'deletes photo' do
    #             expect{
    #             delete :destroy, params: {id: photo.id }
    #             }.to change(Photo, :count).by(-1)
    #         end
    #     end 
    # end
end 