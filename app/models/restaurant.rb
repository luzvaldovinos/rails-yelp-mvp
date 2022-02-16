class Restaurant < ApplicationRecord
  has_many :reviews, dependnet: :destroy
end
