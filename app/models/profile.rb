class Profile < ActiveRecord::Base

  belongs_to :user

  has_attached_file :file
  validates_attachment_content_type :file, content_type: [ 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document' ]
  validates_attachment_size :file, less_than: 25.megabytes


end
