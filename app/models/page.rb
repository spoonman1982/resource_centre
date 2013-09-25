class Page < ActiveRecord::Base
  attr_accessible :name, :parent_id, :ancestry

  has_ancestry

  has_many :page_contents
 #has_many :page_contents, through: :line_items
end
