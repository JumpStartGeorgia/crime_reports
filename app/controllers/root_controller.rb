class RootController < ApplicationController

  def index
    @home_about = Page.find_by_name('home_about')

    respond_to do |format|
      format.html # index.html.erb
    end
  end

end
