require 'rails_helper'

RSpec.describe 'Home Index', type: :feature do
  describe 'as a visitor' do
    it 'loads the page' do
      visit '/'
      
      expect(current_path).to eq(root_path)
      expect(status_code).to eq(200)
    end
  end
end
