class AddReferencesToRelations < ActiveRecord::Migration[7.0]
  def change
    add_reference :relations, :group, null: false, foreign_key: true
    add_reference :relations, :entity, null: false, foreign_key: true
  end
end
