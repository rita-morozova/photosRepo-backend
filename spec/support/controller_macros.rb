#tests sign in and calls the test before every controller test

module ControllerMacros
    def login
        before(:each) do
            @request.env["devise.mapping"] = Devise.mappings[:user]
            @user = FactoryBot.create(:user)
            sign_in @user 
        end
    end
end