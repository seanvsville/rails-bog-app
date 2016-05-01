Rails.application.routes.draw do
  root 'creatures#index'

  #METHOD   #PATH                     #CONTROLLER#ACTION    #ALIAS
  get       '/creatures'        =>    'creatures#index',    as: :creatures
  post      '/creatures'        =>    'creatures#create'
  get       '/creatures/new'    =>    'creatures#new',       as: :new_creature


end
