class AtencionesController < ApplicationController
 # before_action :authenticate_usuario!


  def index
    @atenciones = Atencion.paginate(:page => params[:page], :per_page => 30)
  end

  def mostrar
  end

  def nuevo
  end

  def editar
  end

  def update
  end

  def crear
  end

  def eliminar
  end
end
