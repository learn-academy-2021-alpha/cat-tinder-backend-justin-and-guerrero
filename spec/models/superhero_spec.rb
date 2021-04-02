require 'rails_helper'

RSpec.describe Superhero, type: :model do
  it 'should have a name' do
    hero = Superhero.create(age:21, enjoys:'doing nothing')
    expect(hero.errors[:name]).to include "can't be blank"
  end

  it 'should have an age' do
    hero = Superhero.create(name:'spidey', enjoys:'doing nothing')
    expect(hero.errors[:age]).to include "can't be blank"
  end

  it 'should enjoy something' do
    hero = Superhero.create(name:'batman', age:21)
    expect(hero.errors[:enjoys]).to include "can't be blank"
  end
end
