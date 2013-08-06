class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, active: false
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  # validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@framgia.com/i

  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  # validates :password, presence: true, length: { minimum: 6 }
  # validates :password_confirmation, presence: true
  
  has_many :reports
  has_many :details, through: :reports

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end