Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # *afficher* le formulaire de tâche (CREATE)
  get "tasks/new", to: "tasks#new"
  # *envoyer data* pour créer la nouvelle tâche (CREATE)
  post "tasks", to: "tasks#create"

  # *afficher* le formulaire de tâche (EDIT)
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # *modifier data* pour éditer la tâche (EDIT)
  patch "tasks/:id", to: "tasks#update"

  # *supprimer data* pour supprimer une tâche (DELETE)
  delete "tasks/:id", to: "tasks#destroy"

  # *afficher* la liste de tâches (READ)
  get "tasks", to: "tasks#index"
  # *afficher* une tâche (READ)
  get "tasks/:id", to: "tasks#show", as: :task
end
