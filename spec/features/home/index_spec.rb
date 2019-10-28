require 'rails_helper'

RSpec.describe 'Home Index', type: :feature do
  describe 'as a visitor' do
    before :each do
      visit root_path
    end

    it 'loads the page' do
      expect(current_path).to eq(root_path)
      expect(status_code).to eq(200)
    end

    it 'has link to register' do
      expect(page).to have_link('Register')
      click_link 'Register'
      expect(current_path).to eq(new_user_registration_path)
    end
  end
end
