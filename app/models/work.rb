class Work < ActiveRecord::Base
  belongs_to :work
  has_many :works
  attr_accessible :deadline, :description, :title
  validates :title, presence: true

  ##
  # The person who has initiated the work
  def assigner
  	User.find self.assigned_by
  end

  ##
  # The person who should complete the work
  def assignee
  	User.find self.assigned_to
  end
end
