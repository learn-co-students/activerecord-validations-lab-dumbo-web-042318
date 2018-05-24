class Post < ActiveRecord::Base
  validates :title, presence: :true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {:in => %w(Fiction Non-Fiction)}

  validates_format_of :title, :with => /won't\sbelieve|secret|top\s[0-9]+|guess/i
end
