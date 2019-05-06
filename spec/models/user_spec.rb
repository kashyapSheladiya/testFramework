require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'first name should be always present' do
      user = User.new(last_name: 'last', email: 'xxx@exe.com').save
      expect(user).to eq(false)
    end

    it 'last name should be always present' do
      user = User.new(first_name: 'first', email: 'xxx@exe.com').save
      expect(user).to eq(false)
    end

    it 'email name should be always present' do
      user = User.new(first_name: 'first', last_name: 'last').save
      expect(user).to eq(false)
    end

    it 'email should be valid' do
      user1 = User.new(first_name: 'first', last_name: 'last', email: 'xxxexe.com').save
      user2 = User.new(first_name: 'first', last_name: 'last', email: 'xxx@execom').save
      user3 = User.new(first_name: 'first', last_name: 'last', email: 'xxx@exe.67').save
      user4 = User.new(first_name: 'first', last_name: 'last', email: 'xxxexecom').save
      user5 = User.new(first_name: 'first', last_name: 'last', email: '@exe.com').save
      user6 = User.new(first_name: 'first', last_name: 'last', email: 'xxx@.com').save
      expect(user1).to eq(false)
      expect(user2).to eq(false)
      expect(user3).to eq(false)
      expect(user4).to eq(false)
      expect(user5).to eq(false)
      expect(user6).to eq(false)
    end

    it 'User data should be saved' do
      user = User.new(first_name: 'first', last_name: 'last', email: 'xxx@exe.com').save
      expect(user).to eq(true)
    end
  end

  context 'scope tests' do
    before(:each) do
      User.new(first_name: 'first', last_name: 'last', email: 'xxx@exe.com').save
      User.new(first_name: 'first', last_name: 'last', email: 'xxx@exe.com').save
      User.new(first_name: 'first', last_name: 'last', email: 'xxx@exe.com', active: false).save
      User.new(first_name: 'first', last_name: 'last', email: 'xxx@exe.com', active: false).save
      User.new(first_name: 'first', last_name: 'last', email: 'xxx@exe.com', active: true).save
    end

    it 'should return active users' do
      expect(User.active_users.size).to eq(3)
    end

    it 'should return inactive users' do
      expect(User.inactive_users.size).to eq(2)
    end
  end
end
