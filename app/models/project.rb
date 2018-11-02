class Project < ApplicationRecord
  has_many :contracts
  has_many :people, through: :contracts
end
