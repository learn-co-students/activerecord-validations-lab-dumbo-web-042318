class Post < ActiveRecord::Base
  # All posts have a title
  validates :title, presence: true
  # Post content is at least 250 characters long
  validates :content, length: {minimum: 250}
  # Post summary is a maximum of 250 characters
  validates :summary, length: {maximum: 250}
  # Post category is either Fiction or Non-Fiction This step requires an inclusion validator
  validates :category, inclusion: { in: %w(fiction, non-fiction)}
  # add a custom validator to Post that ensures the title is sufficiently clickbait-y. If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess", the validator should return false.
  # validate :must_titles
  #
  # def must_titles
  #   if title.include?("Won't Believe") || title.include?("Secret") || title.include?("Top") || title.include?("Guess")
  #     return false
  #   end
  # end
end
