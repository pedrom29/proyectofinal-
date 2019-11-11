class Question < ApplicationRecord
  has_many :votes, dependent: :delete_all
  has_many :votes
end
