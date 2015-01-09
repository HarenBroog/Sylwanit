class User < ActiveRecord::Base
  after_initialize :defaults

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_many :posts, inverse_of: :owner
  has_many :comments, inverse_of: :author

  validates :first_name, presence: true
  validates :last_name, presence: true

  scope :sorted, -> { order('last_name', 'first_name') }

  private

  def defaults
    self.layout ||= 'tweed'
  end
end
