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
  describe "Post /superheros" do
    it 'creates a new hero' do
      hero_params = {
        hero: {
          name: 'kanye',
          age: 45,
          enjoys: 'margiela masks and saving the future'
        }
      }
      post '/superheros', params:hero_params

      hero = Superhero.first
      expect(hero.name).to eq 'kanye'
      expect(hero.age).to eq 45
      expect(hero.enjoys).to eq 'margiela masks and saving the future'

      hero_response = JSON.parse(response.body)

      expect(hero_response['name']).to eq 'kanye'

      expect(hero_response['age']).to eq 45
      
      expect(hero_response['enjoys']).to eq 'margiela masks and saving the future'
    end
  end

end
