class Detail < ActiveRecord::Base
  attr_accessible :catalog_id, :content, :report_id
  belongs_to :catalog
  belongs_to :report
  belongs_to :user
end
