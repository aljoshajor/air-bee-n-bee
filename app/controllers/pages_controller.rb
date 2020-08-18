class PagesController < ApplicationController
  def home
    @bees = Bee.all
  end
end
