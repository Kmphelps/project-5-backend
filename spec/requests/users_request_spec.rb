require 'rails_helper'

RSpec.describe 'Create Users', type: :request do
   
    it 'returns created status after creating a new user' do
        headers = { 'ACCEPT' => 'application/json' }
        post '/users', :params => { :user => { username: 'Sarah', password: 'secret', avatar: 'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/black-lab-pup-1-jonathan-ross.jpg' }}, :headers => headers 
        expect(response).to have_http_status(201)
    end
end

