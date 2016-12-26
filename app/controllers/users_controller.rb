class UsersController < ApplicationController
  def my_portfolio
    @user_stocks = current_user.user_stocks
    @user_stocks_ = current_user.stocks.select('user_stocks.id as user_stock_id ', 'stocks.*')
    @user = current_user
  end
end