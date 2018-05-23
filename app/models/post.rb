class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true, length: {minimum: 10}
  validates :summary, presence: true, length: {maximum: 20}
  validates :invalid_cat, acceptance: true
  validates :is_clickbait, acceptance: true

  def invalid_cat
    if self.category == "Fiction"
    else
      false
    end
  end
  def is_clickbait
    if self.title == "You Won't Believe These True Facts"
    else
      false
    end
  end
end
