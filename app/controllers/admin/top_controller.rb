class Admin::TopController < ApplicationController
  before_action :authorize
  
  def index
    if current_administrator
      render action: "dashboard"
    else
      render action: "index"
    end
  end
end