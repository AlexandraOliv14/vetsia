Rails.application.routes.draw do

  get 'bloque/',to: 'bloque#index', as: 'bloques'
  get 'bloque/:id',to: 'bloque#mostrar', as: 'bloque'
  get 'bloque/:id/editar', to: 'bloque#editar', as: 'editar_bloque'
  delete 'bloque/:id',to: 'bloque#eliminar'
  put 'bloque/:id',to: 'bloque#update'
  patch 'bloque/update',to: 'bloque#update'
  get 'bloque/nuevo', as: 'nuevo_bloque'
  post 'bloque/', to: 'estado#crear'

  get 'estado/',to: 'estado#index', as: 'estados'
  get 'estado/nuevo', as: 'nuevo_estado'
  get 'estado/:id/editar', to: 'estado#editar', as: 'editar_estado'
  get 'estado/:id',to: 'estado#mostrar', as: 'estado'
  put 'estado/:id',to: 'estado#update'
  patch 'estado/:id',to: 'estado#update'
  delete 'estado/:id', to: 'estado#eliminar'
  post 'estado/',to: 'estado#crear'

  get 'mascotas/', to: 'mascota#index', as: 'mascotas'
  get 'mascotas/nuevo',to: 'mascota#nuevo', as: 'nueva_mascota'
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

  get 'duenos/', to: 'duenos#index', as: 'duenos'
  get 'duenos/nuevo', as: 'nuevo_dueno'
  post 'duenos/', to: 'duenos#crear'
  get 'duenos/:id/editar', to: 'duenos#editar', as: 'editar_dueno'
  get 'duenos/:id', to: 'duenos#mostrar', as: 'dueno'
  put 'duenos/:id',to: 'duenos#update'
  patch 'duenos/:id' ,to: 'duenos#update'
  delete 'duenos/:id', to: 'duenos#eliminar', as:'eliminar_dueno'

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
