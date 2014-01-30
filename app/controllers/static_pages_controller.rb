class StaticPagesController < ApplicationController
  def home
  	@title = full_title('Home')
  end

  def help
  	@title = full_title('Help')
  end

  def about
  	@title = full_title('About')
  end
end
