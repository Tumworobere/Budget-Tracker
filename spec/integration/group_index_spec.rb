require 'rails_helper'

RSpec.describe 'Group Index', type: :feature do
  describe 'Group' do
    before(:each) do
      @user1 = User.create! name: 'Gordon', password: 'godanah', email: 'gbuldie@gmail.com'
      @group = @user1.groups.create! name: 'HBO', icon: 'icon'
      visit new_user_session_path
      fill_in('Email', with: 'gbuldie@gmail.com')
      fill_in('Password', with: 'godanah')
      click_button('LOG IN')
      visit root_path
    end

    it 'has button to add new group' do
      expect(page).to have_selector(:link_or_button, 'Add Category')
    end

    it 'has heading in navbar' do
      expect(page).to have_selector(:link_or_button, 'Categories')
    end

    it 'has name and delete button of new group' do
      expect(page).to have_selector(:link_or_button, 'HBO')
    end
  end
end
