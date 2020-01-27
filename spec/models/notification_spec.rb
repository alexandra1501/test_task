# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Notification, type: :model do
  describe 'Notification validation' do
    it('indentifier should be unique') do
      Notification.create\
        notification_type: 'SMS',
        template: 'Good morning',
        identifier: 'greeting'
      notification = Notification.new\
        notification_type: 'SMS',
        template: 'Good morning',
        identifier: 'greeting'
      expect(notification.save).to be false
    end
  end
end
