class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
    @transaction.company = current_user.company
    authorize @transaction
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @flat = Flat.find(params[:flat_id])
    @transaction.flat = @flat
    @company = current_user.company
    @transaction.company = @company
    authorize @transaction
    if @transaction.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:amount, :date, :category_id, :description, :is_expense)
  end
end
