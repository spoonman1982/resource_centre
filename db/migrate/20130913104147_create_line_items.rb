class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :page_id
      t.integer :page_content_id

      t.timestamps
    end
  end
end
