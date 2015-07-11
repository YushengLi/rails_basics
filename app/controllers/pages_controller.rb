class PagesController < ApplicationController
  def home
  end

  def about
    @height = params[:height].to_f
    @name   = params[:nickname]
    @weight = params[:weight].to_f

    @bmi    = @weight/(@height**2)
  end

  def contact
  end

  def faq
  end

  def math
    render 'pages/math'
  end

  def form
  end
end
