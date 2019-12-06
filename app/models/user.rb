class User < ApplicationRecord
  has_many :providers
  has_many :votes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2, :facebook]
  enum role: [:admin, :voter, :parliamentary]

  after_initialize do
    if self.new_record?
      self.role ||= :voter
    end
  end


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name
    end
  end


end
