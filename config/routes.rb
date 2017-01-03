Rails.application.routes.draw do
  
  get 'tipo_mascotas/', to: 'tipo_mascota#index', as: 'tipo_mascotas'
  get 'tipo_mascotas/nuevo', as: 'nuevo_tipo_mascota'
  post 'tipo_mascotas/',to: 'tipo_mascota#crear'
  put 'tipo_mascotas/:id', to: 'tipo_mascota#update'
  patch 'tipo_mascotas/:id', to: 'tipo_mascota#update'
  get 'tipo_mascotas/:id/editar', to: 'tipo_mascota#editar', as: 'editar_tipo_mascota'
  get 'tipo_mascotas/:id', to: 'tipo_mascota#mostrar', as: 'tipo_mascota'
  delete 'tipo_mascotas/:id', to: 'tipo_mascota#eliminar'

  get 'duenos/', to: 'duenos#index', as: 'duenos'
  get 'duenos/nuevo', as: 'nuevo_dueno'
  post 'duenos/', to: 'duenos#crear'
  get 'duenos/:id/editar', to: 'duenos#editar', as: 'editar_dueno'
  get 'duenos/:id', to: 'duenos#mostrar', as: 'dueno'
  put 'duenos/:id',to: 'duenos#update'
  patch 'duenos/:id' ,to: 'duenos#update'
  delete 'duenos/:id', to: 'duenos#eliminar'
  
  get 'atenciones/' , to: "atenciones#index", as: 'atenciones'
  get  'atenciones/nuevo',to: 'atenciones#nuevo'
  post 'atenciones/', to: 'atenciones#crear'
  get 'atencion/:id/editar', to: 'atenciones#editar', as: 'editar_atencion'
  get 'atenciones/:id', to: 'atenciones#mostrar', as: 'atencion'
  put 'atenciones/:id',to: 'atenciones#update'
  patch 'atenciones/:id' ,to: 'atenciones#update'
  delete 'atenciones/:id', to: 'atenciones#eliminar'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
