class Catalog < ActiveRecord::Base
  attr_accessible :content, :name
  has_many :details
end
