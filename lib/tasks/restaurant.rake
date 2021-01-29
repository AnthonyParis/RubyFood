namespace :restaurant do
  desc "Ceci est un test"
  task test: :environment do
  	puts 'La tâche commence'
  	RestaurantJob.perform_later(11)
  	puts 'La tâche est finie'
  end

end
