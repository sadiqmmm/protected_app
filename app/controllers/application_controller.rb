class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_items

  def get_items
    if user_signed_in?
      @search_items = current_user.items.order("title").pluck(:title)
    end
  end
end
