require 'pry'

class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-fiction)}
    validate :clickbait_y

    def clickbait_y
        return false if title.nil?
        clickbait = ["Won't Believe", "Secret", "Top", "Guess"]
        var = clickbait.any? do |bait|
            title.include?(bait)
        end
        if var == false
            errors.add(:title, "this shit broken")
        end
    end
end
