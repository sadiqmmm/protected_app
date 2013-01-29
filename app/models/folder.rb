class Folder < ActiveRecord::Base
  attr_accessible :parent_id, :name

  has_ancestry
end
