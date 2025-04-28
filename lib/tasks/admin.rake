namespace :admin do
    desc "Create a new Admin"
    task create: :environment do
      puts "Enter Admin Email:"
      email = STDIN.gets.chomp
  
      puts "Enter Password:"
      password = STDIN.noecho(&:gets).chomp
      puts
  
      admin = Admin.create(email: email, password: password, password_confirmation: password)
  
      if admin.persisted?
        puts "Admin created successfully!"
      else
        puts "Error creating admin: #{admin.errors.full_messages.join(', ')}"
      end
    end
  end
  