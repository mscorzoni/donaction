require 'rails_helper'

describe User do 
 
  it 'has to give an address and a name' do
    user3 = User.create(name: 'pat', address: 'rua mourato coelho, 1404 - Sao Paulo, Brazil', email: 'pat@example.com', password: '123456', password_confirmation: '123456')
    user4 = User.create(email: 'patt@example.com', password: '123456', password_confirmation: '123456')
    expect(User.count).to eq(1)
  end

  it 'has to contain geocode' do
    user3 = User.create(name: 'pat', address: 'rua mourato coelho, 1404 - Sao Paulo, Brazil', email: 'pat@example.com', password: '123456', password_confirmation: '123456')
    expect(user3.longitude).to_not eq(nil)
  end
end