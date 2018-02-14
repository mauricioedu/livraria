namespace :utils do
  desc "Criar Administradores Fake"
  task generate_admins: :environment do
    puts "Cadastrando Administradores FAKE..."

    10.times do
      Admin.create!(email: Faker::Internet.email,
                   password: "123456",
                   password_confirmation: "123456")
    end

    puts "Cadastrado Administradores com sucesso..."
  end

end
