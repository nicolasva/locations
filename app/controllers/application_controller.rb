class ApplicationController < ActionController::Base
  before_action :panel

  def panel
    @homes = Home.all
  end
end
