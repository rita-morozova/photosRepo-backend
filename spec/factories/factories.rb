FactoryBot.define do 
    factory :user do 
        sequence(:username)
        password{ '123' }
    end 

    factory :photo do 
        user
        user_id {:user_id}
        username{:username}
        image{:image}
    end 
end 

