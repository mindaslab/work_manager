class Work < ActiveRecord::Base
  belongs_to :work
  has_many :works
  attr_accessible :deadline, :description, :title
  validates :title, presence: true
  belongs_to :assigner, :class_name => "User", :foreign_key => "assigned_by"
  belongs_to :assignee, :class_name => "User", :foreign_key => "assigned_to"

  ##
  # Sets the assigner to the email specified
  def assigner_email= email
  	self.assigned_by = User.find_by_email(email).id
  end

  ##
  # Sets the assignee to the email specified
  def assignee_email= email
  	self.assigned_to = User.find_by_email(email).id
  end
end
