class List < ActiveRecord::Base
  attr_accessible :email, :name
  validates :email, :presence => true, :uniqueness => true#, :email_format => true
end
