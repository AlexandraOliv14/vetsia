class TipoMascotaController < ApplicationController
  before_action :set_tipo_mascotas, only: [:mostrar,:editar,:eliminar, :update]  
  def index
  end

  def nuevo
  end

  def crear
  end

  def update
  end

  def mostrar
  end

  def eliminar
  end

  def editar
  end
  
  private
 
  #strong paramas
  def tipo_mascota_params
    params.require(:tipo_mascota).permit(:descripcion)
  end
  
  #no repeteriemos esto en todos los metodos
  def set_tipo_mascotas
    @tipo_mascotas = tipo_mascotas.find(params[:id])
  end
  
end
