class Post < ApplicationRecord
  has_many :comments, dependent: :destroy, counter_cache: true
end
