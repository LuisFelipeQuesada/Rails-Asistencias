class WelcomeController < ApplicationController
def index
	respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @requirements }
  end
end
end
