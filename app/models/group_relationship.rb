class GroupRelationship < ApplicationRecord
  has_many :group_relationships
  has_many :participated_groups, :through => :group_relationships, :source => :group
end
