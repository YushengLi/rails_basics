class Post < ActiveRecord::Base
  validates :title, presence: true, format: { with: /\A[0-9]/, message: 'Should start with number.' }  #/\A\d/
end