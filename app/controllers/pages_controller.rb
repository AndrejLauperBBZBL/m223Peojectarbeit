class PagesController < ApplicationController
  def home
    @motorcycles = Motorcycle.all
  end
end
