class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :report_id
      t.integer :catalog_id
      t.text :content

      t.timestamps
    end
  end
end
