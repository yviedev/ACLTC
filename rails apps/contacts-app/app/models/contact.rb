class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Contact < ApplicationRecord
  
  belongs_to :user, optional: true

  has_many :grouped_contacts
  has_many :groups, through: :grouped_contacts

  validates :email, presence: true, email: true
  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def friendly_time
    created_at.strftime("%b %d %y")
  end

  def full_name
    first_name + " " + last_name
  end

  def japanese_prefix
    "+81 #{phone_number}"
  end

end
