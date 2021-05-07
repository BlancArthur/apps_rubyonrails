class PagesController < ApplicationController
  def home
    @oeuvres = Oeuvre.all
  end


end



