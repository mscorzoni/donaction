require 'rails_helper'

describe User do 
 
  it 'has to give an address and a name' do
    user3 = User.create(name: 'pat', address: 'adress', email: 'pat@example.com', password: '123456', password_confirmation: '123456')
    user4 = User.create(email: 'patt@example.com', password: '123456', password_confirmation: '123456')
    expect(User.count).to eq(1)
  end
end