class MascotaController < ApplicationController
  before_action :set_mascota, only: [:mostrar,:editar,:eliminar, :update]
  def index
    @mascota=Mascota.paginate(:page => params[:page], :per_page => 20).order('updated_at DESC')
  end

  def nuevo
    @mascota=Mascota.new
  end

  def crear
    @mascota = Mascota.new(mascota_params)
    respond_to do |format|
      if @mascota.save
        format.html{redirect_to @mascota, notice:  'Mascota Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @mascota.update(mascota_params)
        format.html{redirect_to @mascota, notice: 'Mascota Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def mostrar
  end

  def eliminar
    @mascota.destroy
    respond_to do |format|
      format.html { redirect_to mascotas_url, notice: 'mascota eliminado con Exito.' }
    end
  end

  def editar
  end
  
  private
  
   def mascota_params
    params.require(:mascota).permit(:nombre,:tipomascota)
  end
  
  def set_mascota
    @mascota = Mascota.find(params[:id])
  end
  
end
