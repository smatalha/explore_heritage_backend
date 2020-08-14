class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :site

  def time_stamp
    self.created_at.strftime("%D %H:%m")
  end
  # def days_ago(days)
  #   advance(days: -days)
  # end
  # def ago(time = ::Time.current)
  #   sum(-1, time)
  # end
end
