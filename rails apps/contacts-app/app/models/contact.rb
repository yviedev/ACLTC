class Contact < ApplicationRecord
  
  belongs_to :user

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
