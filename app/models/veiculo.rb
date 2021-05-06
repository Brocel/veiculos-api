class Veiculo < ApplicationRecord

  # validations
  validates_presence_of :marca, :veiculo, :ano, :descricao, :vendido, :created_at, :updated_at
end
