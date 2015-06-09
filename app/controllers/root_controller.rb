class RootController < ApplicationController

  def index
    @home_about = Page.find_by_name('home_about')

    @lexpect = { :male => 69, :female => 77 }

    @victim = Actor.where( :actor_type_id => @victim_type_id).order("Rand()").first

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def about
    @about = Page.find_by_name('about')

    respond_to do |format|
      format.html
    end
  end

end
