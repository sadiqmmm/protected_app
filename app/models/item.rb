class Item < ActiveRecord::Base
  attr_accessible :folder_id, :login, :login_url, :notes, :password, :title

  belongs_to :folder
  belongs_to :user
end
