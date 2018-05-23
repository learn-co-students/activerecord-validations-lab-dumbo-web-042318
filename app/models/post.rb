class Post < ActiveRecord::Base
validates :title, presence: true
validates :content, length: {minimum: 250}
validates :summary, length: {maximum: 250}
validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

validates :is_clickbait, acceptance: true

 def is_clickbait
   return false if self.title.nil?
   if self.title.match(/(Won't Believe)|(Secret)|(Top \d)|Guess/)
     # return trues
   else
     return false
   end
 end




end
