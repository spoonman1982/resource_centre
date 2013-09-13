class Page < ActiveRecord::Base
  attr_accessible :name, :parent_id

  has_ancestry

  has_many :line_items
  has_many :page_contents, through: :line_items
end
