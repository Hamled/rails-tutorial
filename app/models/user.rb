class User < ActiveRecord::Base

  NAME_MAXLEN = 50
  validates :name, presence: true, length: { maximum: NAME_MAXLEN }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
