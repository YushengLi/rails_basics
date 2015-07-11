class LotteryController < ApplicationController
  def show
    @balls = (1..42).to_a.sample(6)
    render layout: 'lottery'
  end
end
