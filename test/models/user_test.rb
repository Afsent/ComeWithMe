require 'test_helper'

class UserTest < ActiveSupport::TestCase

	test 'valid user' do
    user = User.new(email: 'test@test.com', password: 'qazxswfd')
    assert user.valid?
  end

  test 'user invalid without password' do
    user = User.new(email: 'test@test.com')
    assert_not user.valid?
  end

  test 'user invalid without email' do
    user = User.new(password: 'qazxswfd')
    assert_not user.valid?
  end

  test 'user invalid with short password' do
    user = User.new(email: 'test@test.com', password: 'swfd')
    assert_not user.valid?
  end

  test 'should find user after creation' do
    created = User.create(email: 'test@test.com', password: 'qazxswfd')
    found = User.find_by(email: 'test@test.com')
    assert_equal created, found
  end

  test 'should not save user duplicates by email' do
    user1 = User.new(email: 'test@test.com', password: 'qazxswfd')
    assert user1.save
    user2 = User.new(email: 'test@test.com', password: 'aasfafaga')
    assert_not user2.save
  end
end
