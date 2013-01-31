class StaticPagesController < ApplicationController
  def home
    @last_folders = current_user.folders.order("updated_at").limit(10)
    @last_items = current_user.items.order("updated_at").limit(10)
  end
end
