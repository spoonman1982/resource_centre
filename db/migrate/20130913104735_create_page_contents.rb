class CreatePageContents < ActiveRecord::Migration
  def change
    create_table :page_contents do |t|
      t.string :title
      t.string :content
      t.string :image

      t.timestamps
    end
  end
end
