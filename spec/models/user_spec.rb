require 'rails_helper'

RSpec.describe User, :type => :model do
    subject {
        described_class.new(username: 'admin',
                            password: '123')
    } 

    describe "Validations" do
        it "is valid with valid attributes" do 
            expect(subject).to be_valid
        end

        it "is not valid without a username" do 
            subject.username = nil
            expect(subject).to_not be_valid
        end 

        it "is not valid without a password" do 
            subject.password = nil
            expect(subject).to_not be_valid
        end 
    end 

    describe "Associations" do 
        it { should have_many(:photos) }
    end 
end 