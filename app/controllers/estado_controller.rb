class EstadoController < ApplicationController
  before_action :set_estado, only: [:mostrar, :editar, :update, :eliminar]
  def crear
    @estado = Estado.new(estado_params)
    respond_to do |format|
      if @estados.save
        format.html{redirect_to estado_url, notice:  'Estado Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def editar
  end

  def eliminar
    @estados.destroy
    respond_to do |format|
      format.html { redirect_to estados_url, notice: 'Estado eliminado con Exito.' }
    end
  end

  def index
    @estados=Estado.paginate(:page => params[:page], :per_page => 20).order('updated_at DESC')
  end

  def mostrar
  end

  def nuevo
    @estados= Estado.new
  end

  def update
    respond_to do |format|
      if @estados.update(estado_params)
        format.html{redirect_to estados_url, notice: 'Estado Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end
  
  private

  #strong paramas
  def estado_params
    params.require(:estado).permit(:descripcion)
  end

  #no repeteriemos esto en todos los metodos
  def set_estado
    @estados = Estado.find(params[:id])
  end
end
