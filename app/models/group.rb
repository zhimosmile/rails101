class Group < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  validates :title, presence: true
  has_many :group_relationships
  has_many :members, through: :group_relationships, source: :user

  def is_memeber_of?(group)
    participated_groups.include?(group)
  end
end
