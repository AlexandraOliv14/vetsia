Rails.application.routes.draw do

  get 'bloques/',to: 'bloque#index', as: 'bloques'
  get 'bloques/:id',to: 'bloque#mostrar', as: 'bloque'
  get 'bloques/:id/editar', to: 'bloque#editar', as: 'editar_bloque'
  delete 'bloques/:id',to: 'bloque#eliminar'
  put 'bloques/:id',to: 'bloque#update'
  patch 'bloques/update',to: 'bloque#update'
  get 'bloques/nuevo', as: 'nuevo_bloque'
  post 'bloques/', to: 'estado#crear'

  get 'estados/',to: 'estado#index', as: 'estados'
  get 'estados/nuevo', as: 'nuevo_estado'
  get 'estados/:id/editar', to: 'estado#editar', as: 'editar_estado'
  get 'estados/:id',to: 'estado#mostrar', as: 'estado'
  put 'estados/:id',to: 'estado#update'
  patch 'estados/:id',to: 'estado#update'
  delete 'estados/:id', to: 'estado#eliminar'
  post 'estados/',to: 'estado#crear'

  get 'mascotas/', to: 'mascota#index', as: 'mascotas'
  get 'mascotas/nuevo', to:'mascota#nuevo'
  post 'mascotas/', to: 'mascota#crear'
  put 'mascotas/:id', to: 'mascota#update'
  patch 'mascotas/:id', to: 'mascota#update'
  get 'mascotas/:id', to: 'mascota#mostrar', as: 'mascota'
  delete 'mascotas/:id', to: 'mascota#eliminar'
  get 'mascotas/:id/editar', to: 'mascota#editar', as: 'editar_mascota'

  get 'tipo_mascotas/', to: 'tipo_mascota#index', as: 'tipo_mascotas'
  get 'tipo_mascotas/nuevo', as: 'nuevo_tipo_mascota'
  post 'tipo_mascotas/',to: 'tipo_mascota#crear'
  put 'tipo_mascotas/:id', to: 'tipo_mascota#update'
  patch 'tipo_mascotas/:id', to: 'tipo_mascota#update'
  get 'tipo_mascotas/:id/editar', to: 'tipo_mascota#editar', as: 'editar_tipo_mascota'
  get 'tipo_mascotas/:id', to: 'tipo_mascota#mostrar', as: 'tipo_mascota'
  delete 'tipo_mascotas/:id', to: 'tipo_mascota#eliminar'

  delete 'duenos/:id', to: 'duenos#eliminar'
  get 'duenos/', to: 'duenos#index', as: 'duenos'
  get 'duenos/nuevo', as: 'nuevo_dueno'
  post 'duenos/', to: 'duenos#crear'
  get 'duenos/:id/editar', to: 'duenos#editar', as: 'editar_dueno'
  get 'duenos/:id', to: 'duenos#mostrar', as: 'dueno'
  put 'duenos/:id',to: 'duenos#update'
  patch 'duenos/:id' ,to: 'duenos#update'


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
