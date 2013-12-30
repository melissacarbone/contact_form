class Contact<ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :subject
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :description

  def self.find_contact(last_name)
    where(last_name:last_name).count
  end
end
