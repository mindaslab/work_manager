class Work < ActiveRecord::Base
  belongs_to :work
  attr_accessible :deadline, :description, :title
  validates :title, presence: true
end
