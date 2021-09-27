require 'rails_helper'

RSpec.describe PhotosController, type: :routing do 

    describe 'routing' do 

        it 'routes to #index' do 
          expect(get: '/photos').to route_to('photos#index')
        end

        it 'routes to #create' do 
          expect(post: '/photos').to route_to('photos#create')
        end

        it 'routes to #destroy' do 
          expect(delete: '/photos/10').to route_to('photos#destroy', id: "10")
        end
    end 
    
end 