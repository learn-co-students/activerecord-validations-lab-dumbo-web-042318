class Post < ActiveRecord::Base
validates :title, presence: true
validates :content, length: {minimum: 250}
validates :summary, length: {maximum: 250}
validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

validates :non_clickbait, title: {in: %w(Won't Believe Secret Top[number] Guess)}


end
