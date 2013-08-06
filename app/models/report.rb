class Report < ActiveRecord::Base
  attr_accessible :date, :user_id
  has_many :details
  belongs_to :user
end
