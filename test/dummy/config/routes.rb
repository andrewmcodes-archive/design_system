Rails.application.routes.draw do
  mount DesignSystem::Engine => "/design_system"
  get "welcome/index"
  root "welcome#index"
end
