class Folder < ActiveRecord::Base
  attr_accessible :parent_id, :name

  has_ancestry
  belongs_to :user
  has_many :items
end
