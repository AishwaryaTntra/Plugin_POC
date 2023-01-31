# desc "This will run and create the migrations for the all gem models"
task :accounts do
  sh 'rails db:migrate'
end
