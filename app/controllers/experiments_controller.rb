class ExperimentsController < ApplicationController

  def page1
  	@timing = 300
  	render :layout => 'layouts/bootstrap'
  end

  def page2
  	render :layout => 'layouts/bootstrap'
  end

  def page3
    @no_turbo = "data-no-turbolink"
  	render :layout => 'layouts/bootstrap'
  end
end
