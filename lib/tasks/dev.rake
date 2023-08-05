
GENDER = ['M','F'].sample

namespace :dev do
  desc 'Adiciona 25 alunos'
  task add_25_alunos: :environment do
    25.times do
      Student.create!(
        name: Faker::Name.name,
        birth_date: Faker::Date.birthday(min_age:18, max_age:65),
        cellphone: Faker::PhoneNumber.cell_phone.gsub(/\D/, ''),
        phone: Faker::PhoneNumber.cell_phone.gsub(/\D/, ''),
        cpf: CPF.generate,
        rg: rand(1000000..9999999),
        email: Faker::Internet.email,
        gender: GENDER,
        cep: rand(00000001..99999999),
        plan_id: 1
      )
    end
  end
end
