class RemoveDate < ActiveRecord::Migration
  def up
    remove_column :drafts, :date
  end

  def down
  end
end
