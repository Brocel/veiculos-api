require 'rails_helper'

#Test suite for the Veiculo model
RSpec.describe Veiculo, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}" #Autogenerated line
  #Validation tests
  # ensure columns are present before saving
  it { should validate_presence_of(:marca) }
  it { should validate_presence_of(:veiculo) }
  it { should validate_presence_of(:ano) }
  it { should validate_presence_of(:descricao) }
  it { should validate_presence_of(:vendido) }
end
