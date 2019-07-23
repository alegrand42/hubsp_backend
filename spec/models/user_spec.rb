# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    subject { create(:user) }

    it 'is database authenticable' do
      expect(subject.email).not_to be_empty
      expect(subject.valid_password?('password')).to be_truthy
    end
  end
end
