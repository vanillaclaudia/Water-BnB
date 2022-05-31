class PagesController < ApplicationController
  def home
    @boats = Boat.limit(6).order
  end
end
