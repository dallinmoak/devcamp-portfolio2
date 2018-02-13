class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validate :conte, presence: true, length: {minimum: 5, maximimum: 5000}
end
