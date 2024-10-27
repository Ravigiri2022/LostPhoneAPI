# config/routes.rb

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "verify_phone", to: "phones#verify"
    end
  end
end
