class Publisher < ActiveRecord::Base
<<<<<<< HEAD
=======
  has_many :books
>>>>>>> development
  validates :name, presence: true
  validates :name, uniqueness: {case_sensitive: false} 
end
