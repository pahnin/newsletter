class AddCoulmnUse < ActiveRecord::Migration
  def up
    add_column :drafts, :use, :boolean
  end

  def down
  end
end
