require 'rails_helper'

RSpec.describe User, type: :model do

  it 'should not save user without username' do
    expect{FactoryGirl.create(:user, username: nil)}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'is invalid if duplicated username (e.g., username is already used)' do
    create(:user, :username => 'username')
    #expect(create(:user, :username => 'username').errors[:username].size).to eq(1)
    expect{create(:user, :username => 'username')}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

end
