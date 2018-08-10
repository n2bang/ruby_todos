class User < ApplicationRecord
  has_many :owned_tasks, class_name: "Task", foreign_key: "owner_id"
  has_many :assigned_tasks, class_name: "Task", foreign_key: "assignee_id"
  has_many :projects
  # attr_accessor :remember_token
  before_save { self.email = email.downcase }
  validates :firstname,  presence: true, length: { maximum: 50 }
  validates :lastname,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :phone, presence:true
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates_presence_of :password, :on => :create

  def send_password_reset
    generate_token(:reset_password_token)
    self.reset_password_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def fullname
    "#{firstname} #{lastname}"
  end
end
