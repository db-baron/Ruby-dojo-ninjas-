class Dojo < ActiveRecord::Base
  # Make sure that a dojo has many ninjas
  has_many :ninjas
  # 4.1 require the presence of the name, city, and state; also require the state to be two characters long
  validates :name, :city, :state, presence: true
  validates :state, length: { is: 2 }
end

class Ninja < ActiveRecord::Base
  # Make sure that a ninja belongs to a dojo
  belongs_to :dojo
  # require the presence of the first name and last name
  validates :first_name, :last_name, presence: true
end
