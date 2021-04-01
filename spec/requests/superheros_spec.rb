require 'rails_helper'

RSpec.describe "Superheros", type: :request do
  describe "GET /superheros" do
    it 'gets a list of heroes' do
      Superhero.create(name:'thor', age:3001, enjoys:'his hammer')
      get '/superheros'
      superhero_response = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(superhero_response.length).to eq 1
      first_superhero = superhero_response.first
      expect(first_superhero['name']).to eq('thor')
      expect(first_superhero['age']).to eq 3001
      expect(first_superhero['enjoys']).to eq ('his hammer')
    end
  end


end
