class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def faq
  end

  def math
    render 'pages/math'
  end
end
