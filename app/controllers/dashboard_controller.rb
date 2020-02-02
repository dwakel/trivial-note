class DashboardController < ApplicationController
  def index
    @note = Note.all
  end
end
