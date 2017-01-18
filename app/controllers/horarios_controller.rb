class HorariosController < ApplicationController
  
  def index
     @horarios=Horario.paginate(:page => params[:page], :per_page => 20).order('updated_at ASC')
  end

  def mostrar
  end

  def editar
  end

  def eliminar
    @horario.destroy
    respond_to do |format|
      format.html { redirect_to horarios_url, notice: 'Horario eliminado con Exito.' }
    end
  end

  def update
    respond_to do |format|
      if @horario.update(horario_params)
        format.html{redirect_to horarios_url, notice: 'Horario Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def nuevo
    @horario=Horario.new
  end

  def crear
    @horario = Horario.new(horario_params)
    respond_to do |format|
      if @horario.save
        format.html{redirect_to horarios_url, notice:  'Horario Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end
  
  private

  #strong paramas
  def horario_params
    params.require(:horario).permit(:bloque,:dia)
  end

  #no repetiremos esto en todos los metodos
  def set_horario
    @horario = Horario.find(params[:id])
  end
end
