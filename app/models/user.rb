class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:admin, :voter, :parliamentary]

  after_initialize do
    if self.new_record?
      self.role ||= :voter
    end
  end


  
end
