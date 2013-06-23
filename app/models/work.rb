class Work < ActiveRecord::Base
  belongs_to :work
  has_many :works
  attr_accessible :deadline, :description, :title, :asignee_email
  validates :title, presence: true
  belongs_to :assigner, :class_name => "User", :foreign_key => "assigned_by"
  belongs_to :assignee, :class_name => "User", :foreign_key => "assigned_to"


  ##
  # Sets the assignee to the email specified
  def assignee_email= email
  	self.assigned_to = User.find_by_email(email).id
  end

  ##
  # Gets the assignee to the email specified
  def asignee_email
  	self.asignee.email
  end
end
