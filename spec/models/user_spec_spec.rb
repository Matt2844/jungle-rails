require 'rails_helper'



RSpec.describe UserSpec, type: :model do
  it 'is database authenticable' do
    user = User.create(
      email: '123@example.com', 
      password: '123',
      password_confirmation: '123'
    )
    expect(user.valid_password?('123')).to be_truthy
  end
  it 'is NOT database authenticable' do
    user = User.create(
      email: '123@example.com', 
      password: '123',
      password_confirmation: '444456'
    )
    expect(user.valid_password?('123')).to be_falsy
  end
  it 'has first name' do
    user = User.create(
      email: '123@example.com', 
      first: 'first name',
      last: 'last name'
    )
    expect(user.valid_first?('first name')).to be_truthy
  end
  it 'has a minimum password length' do
    user = User.create(
      email: '123@example.com', 
      password: '1234678'
    )
    expect(user.valid_password_length_of(:password).is_at_least(3))
  end
end
