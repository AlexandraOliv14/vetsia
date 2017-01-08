class BloqueController < ApplicationController
  before_action :set_bloque, only: [:mostrar,:editar,:eliminar, :update]
  def index
    @bloques=Bloque.paginate(:page => params[:page], :per_page => 20).order('updated_at DESC')
  end

  def mostrar
  end

  def editar
  end

  def eliminar
    @bloques.destroy
    respond_to do |format|
      format.html { redirect_to bloques_url, notice: 'Bloque eliminado con Exito.' }
    end
  end

  def update
    respond_to do |format|
      if @bloques.update(bloque_params)
        format.html{redirect_to bloque_url, notice: 'Bloque Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def nuevo
    @bloques=Bloque.new
  end

  def crear
    @bloques = Bloque.new(bloque_params)
    respond_to do |format|
      if @bloques.save
        format.html{redirect_to bloques_url, notice:  'Bloque Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end
  
  private

  #strong paramas
  def bloque_params
    params.require(:bloque).permit(:descripcion)
  end

  #no repeteriemos esto en todos los metodos
  def set_bloque
    @bloques = Bloque.find(params[:id])
  end

end

