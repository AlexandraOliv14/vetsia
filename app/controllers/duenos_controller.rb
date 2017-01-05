class DuenosController < ApplicationController
before_action :set_dueno, only: [:mostrar,:editar,:eliminar, :update]  
  def index
    @duenos = Dueno.paginate(:page => params[:page], :per_page => 20).order('updated_at DESC')
  end

  def mostrar
  end

  def editar
  end

  def eliminar
    @duenos.destroy 
    respond_to do |format|
      format.html { redirect_to duenos_url, notice: 'Dueño eliminado con Exito.' }
    end
  end

  def update
    respond_to do |format|
      if @duenos.update(dueno_params)
        format.html{redirect_to dueno_url, notice: 'dueno Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def nuevo
    @duenos = Dueno.new
  end
  
  def crear
    @duenos = Dueno.new(dueno_params)
    respond_to do |format|
      if @duenos.save
        format.html{redirect_to dueno_url, notice:  'Dueño Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end
  
  private
 
  #strong paramas
  def dueno_params
    params.require(:dueno).permit(:nombre,:telefono, :mail)
  end
  
  #no repeteriemos esto en todos los metodos
  def set_dueno
    @duenos = Dueno.find(params[:id])
  end
end
