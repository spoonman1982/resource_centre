class LineItem < ActiveRecord::Base
  attr_accessible :page_content_id, :page_id

  belongs_to :page
  belongs_to :page

end
