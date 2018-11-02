class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :edit, :update, :destroy]
  def create
    @contract = Contract.new(contract_params)

    respond_to do |format|
      if @contract.save
        format.html { redirect_to people_path, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { redirect_to contracts_path, notice: 'Contract was not created.'  }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
  end

  def index
    @contracts = Contract.all
  end

  def destroy
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to projects_path, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def contract_params
    params.require(:contract).permit(:project_id, :person_id)
  end

  def set_contract
    @contract = Contract.find(params[:id])
  end
end
