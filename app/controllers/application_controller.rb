class ApplicationController < ActionController::Base
  protect_from_forgery

  def home
    @transactions = Transaction.all
    @transaction = Transaction.new
  end

end
