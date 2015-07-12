class Post < ActiveRecord::Base
  validates :title, presence: true, format: { with: /\A[0-9]/, message: 'Should start with number.' }  #/\A\d/
  before_create :generate_content_from_title

  protected
    def generate_content_from_title
      self.content = title if content.blank?
    end 
end