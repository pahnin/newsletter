class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.text :draft
      t.boolean :use

      t.timestamps
    end
  end
end
