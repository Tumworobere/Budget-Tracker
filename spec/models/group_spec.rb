require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user1 = User.create! name: 'Gordon', password: 'godanah', email: 'gbuldie@gmail.com'
    @group = @user1.groups.create! name: 'HBO', icon: 'icon'
  end

  it 'name should be present' do
    @group.name = nil
    expect(@group).to_not be_valid
  end

  it 'icon should be present' do
    @group.icon = nil
    expect(@group).to_not be_valid
  end

  it 'subject should be valid' do
    expect(@group).to be_valid
  end
end
