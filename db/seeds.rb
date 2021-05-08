# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
veiculos = Veiculo.create(marca: 'Porsche', veiculo:'Carrera 911', ano: 2020, descricao: 'Um carro caro', vendido: false)
veiculos = Veiculo.create(marca: 'Fiat', veiculo: 'Fiesta', ano: 2000, descricao: 'Um carro pequeno e barato', vendido: true)
veiculos = Veiculo.create(marca: 'Lobini', veiculo: 'H1', ano: 2002, descricao: 'O único modelo da marca', vendido: false)
veiculos = Veiculo.create(marca: 'Chevrolet', veiculo: 'Prisma', ano: 2015, descricao: 'Um carro facilmente vendido', vendido: true)
veiculos = Veiculo.create(marca: 'Volkswagen', veiculo: 'Gol', ano: 2013, descricao: 'O carro mais vendido', vendido: true)
veiculos = Veiculo.create(marca: 'Renault', veiculo: 'Kwid', ano: 2018, descricao: 'Um crossover produzido em Curitiba', vendido: true)
