class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def team
    @members = ["Momo", "Mimich", "Salma", "Celia"]
  end
end
