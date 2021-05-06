class VeiculosController < ApplicationController

  before_action :set_veiculo, only: [:show, :update, :destroy]

  # GET /veiculos
  def index
    @veiculos = Veiculo.all
    json_response(@veiculos)
  end

  # POST /veiculos
  def create
    @veiculo = Veiculo.create!(veiculo_params)
    json_response(@veiculo, :created)
  end

  # GET /veiculos/:id
  def show
    json_response(@veiculo)
  end

  # PUT /veiculos/:id
  def update
    @veiculo.update(veiculo_params)
    head :no_content
  end

  # DELETE /veiculos/:id
  def destroy
    @veiculo.destroy
    head :no_content
  end

  private

  def veiculo_params
    # whitelist params
    params.permit(:marca, :veiculo, :ano, :descricao, :vendido)
  end

  def set_veiculo
    @veiculo = Veiculo.find(params[:id])
  end

end
