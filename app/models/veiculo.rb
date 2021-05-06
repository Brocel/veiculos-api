class Veiculo < ApplicationRecord

  # validations
  validates_presence_of :marca, :veiculo, :ano, :descricao #, :vendido -> gives an error : can't be blank
end
