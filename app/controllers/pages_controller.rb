class PagesController < ApplicationController
  def home
    @boats = Boat.limit(6).order(created_at: :desc)
  end
end
