class TipoMascotaController < ApplicationController
  before_action :set_tipo_mascotas, only: [:mostrar,:editar,:eliminar, :update]
  def index
    @tipomascota= TipoMascota.paginate(:page => params[:page], :per_page => 20).order('updated_at DESC')
  end

  def nuevo
    @tipomascota= TipoMascota.new
  end

  def crear
    @tipomascota = TipoMascota.new(tipo_mascota_params)
    respond_to do |format|
      if @tipomascota.save
        format.html{redirect_to @tipomascota, notice:  'Tipo de mascota Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @tipomascota.update(tipo_mascota_params)
        format.html{redirect_to @tipomascota, notice: 'dueno Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def mostrar
  end

  def eliminar
    @tipomascota.destroy
    respond_to do |format|
      format.html { redirect_to mascotas_url, notice: 'tipo de mascota eliminado con Exito.' }
    end
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
    @tipo_mascota = TipoMascota.find(params[:id])
  end

end
