class AddPageIdToPageContents < ActiveRecord::Migration
  def change
    add_column :page_contents, :page_id, :integer
  end
end
