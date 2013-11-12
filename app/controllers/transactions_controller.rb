class TransactionsController < ApplicationController
  def create
    if Transaction.create(params[:transaction])
      redirect_to root_path
    end
  end
end