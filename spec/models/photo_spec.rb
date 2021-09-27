require 'rails_helper'

RSpec.describe Photo, :type => :model do

    let(:user) {
        User.create(username: "joe", password: "123")
    }
  
    subject {
        described_class.new(user_id: user.id, username: user.username, image: "https://res.cloudinary.com/diexi8g0j/image/upload/v1608496208/icoaqm87vfxpbfpj1ual.jpg")
    } 

    describe "Validations" do
        it "is valid with valid attributes" do 
            expect(subject).to be_valid
        end
        
        it "is not valid without an image" do 
            subject.image = nil
            expect(subject).to_not be_valid
        end 
    end 

    describe "Associations" do 
        it { should belong_to(:user).without_validating_presence }
    end 
end 