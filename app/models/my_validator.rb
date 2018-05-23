class MyValidator < ActiveModel::Validator
  def validate(record)
    return false if record.title.nil?
    unless record.title.match(/(Won't Believe)|(Secret)|(Top \d)|Guess/)
      record.errors[:title] << 'Needs a catchy title'
    end
  end
end
