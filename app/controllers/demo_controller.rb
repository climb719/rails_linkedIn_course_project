class DemoController < ApplicationController

  layout false

  def index
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params[:id]
    @page = params[:page]
    #redirect_to(:action => 'index')
  end

  def about
    render('about_us')
  end

  def contact
    if ['us', 'ca'].include?(params[:counrty])
      @phone  = "(800) 555-6789"
    elsif params[:counrty] == 'uk'
      @phone = "(020) 6543 1234"
    else
      @phone = '+1 (987) 654-3210'
    end
    render('contact_us')
  end

end
