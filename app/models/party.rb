class Party < ActiveRecord::Base
  has_many :orders # because this was missing
  has_many :foods, through: :orders
end
