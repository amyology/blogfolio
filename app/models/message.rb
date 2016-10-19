class Message < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates_format_of :email, :with => /@/
  validates :subject, presence: true
  validates :message, presence: true

end
