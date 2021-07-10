require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many(:friendships).dependent(:destroy) }
    it { should have_many(:friends).class_name('User') }

    it { should have_many(:parties) }
    it { should have_many(:invitations) }
  end
  #
  # describe 'validations' do
  #   it { should validate_presence_of(:) }
  # end
  #
  # before :each do
  #
  # end
  #
  # describe 'class methods' do
  #   describe '.' do
  #   end
  # end
  #
  # describe 'instance methods' do
  #   describe '#' do
  #   end
  # end
end
