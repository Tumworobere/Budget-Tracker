require 'rails_helper'

RSpec.describe Relation, type: :model do
  before(:each) do
    @user1 = User.create! name: 'Gordon', password: 'godanah', email: 'gbuldie@gmail.com'
    @entity = @user1.entities.create! name: 'Stranger Things', amount: 1000
    @group = @user1.groups.create! name: 'Netflix', icon: 'icon'
    @relation = @group.relations.create! entity: @entity
  end

  it 'subject should be valid' do
    expect(@relation).to be_valid
  end
end
