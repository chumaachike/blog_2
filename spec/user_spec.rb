require 'rails_helper'

RSpec.describe User, type: :model do

  user = User.new(name: 'Anyone')
  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

end