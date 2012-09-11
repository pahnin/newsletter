class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.date :date
      t.text :draft

      t.timestamps
    end
  end
end
