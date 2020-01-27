# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User validation' do
    it('has correct emal format') do
      user = User.new\
        email: 'test.test',
        first_name: 'Test',
        last_name: 'Test',
        phone: '+380999999'
      expect(user.save).to be false
    end
  end
end
