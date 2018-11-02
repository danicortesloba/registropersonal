class Person < ApplicationRecord
  has_many :contracts
  has_many :projects, through: :contracts
end
