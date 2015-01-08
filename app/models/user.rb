class User < ActiveRecord::Base
  after_initialize :defaults

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :posts, inverse_of: :owner
  has_many :comments, inverse_of: :author

  private

  def defaults
    self.layout ||= 'green'
  end

end
