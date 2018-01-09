class UsersController < ApplicationController
  # GET /lines/1
  # GET /lines/1.json
  def badge
    respond_to do |format|
      format.html # show.html.erb
    end
  end
end
