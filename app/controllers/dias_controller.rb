class DiasController < ApplicationController
  before_action :set_dias, only: [:mostrar,:editar,:eliminar, :update]
  
  def index
    @dias=Dia.paginate(:page => params[:page], :per_page => 20).order('updated_at ASC')
  end

  def mostrar
  end

  def editar
  end

  def eliminar
    @dia.destroy
    respond_to do |format|
      format.html { redirect_to dias_url, notice: 'dia eliminado con Exito.' }
    end
  end

  def update
    respond_to do |format|
      if @dia.update(dias_params)
        format.html{redirect_to dias_url, notice: 'Dia Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def nuevo
    @dia= Dia.new
  end

  def crear
    @dia = Dia.new(dias_params)
    respond_to do |format|
      if @dia.save
        format.html{redirect_to diass_url, notice:  'Dias Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end
  
  private

  #strong paramas
  def dias_params
    params.require(:dia).permit(:descripcion)
  end

  #no repetiremos esto en todos los metodos
  def set_dias
    @dia = Dia.find(params[:id])
  end
end
