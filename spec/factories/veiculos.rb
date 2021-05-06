FactoryBot.define do
  factory :veiculo do
    marca { Faker::Lorem.word }
    veiculo { Faker::Lorem.word }
    ano { Faker::Number.number(digits:4) }
    descricao { Faker::Lorem.word }
    vendido { Faker::Boolean.boolean }

  end
end
