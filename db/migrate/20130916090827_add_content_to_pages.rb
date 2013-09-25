class AddContentToPages < ActiveRecord::Migration
  def change
    add_column :pages, :content, :string
    add_column :pages, :img_main, :string
  end
end
