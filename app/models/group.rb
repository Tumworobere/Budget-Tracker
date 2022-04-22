class Group < ApplicationRecord
  belongs_to :user
  has_many :relations, dependent: :destroy
  validates :name, presence: true
  validates :icon, presence: true

  def created_at
    attributes['created_at'].strftime('%d %b %Y')
  end

  def self_total(id)
    group = Group.find(id)
    relations = group.relations
    @total = 0
    relations.each do |relation|
      entity = Entity.find(relation.entity_id)
      @total += entity.amount
    end
    @total
  end
end
