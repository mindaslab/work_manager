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

  def assigner_email= email
  	self.assigned_by = User.find_by_email(email).id
  end

  def assignee_email= email
  	self.assigned_to = User.find_by_email(email).id
  end
end
