class MedicoController < ApplicationController
before_action :set_medico, only: [:mostrar,:editar,:eliminar, :update]

  def index
    @medicos= Medico.paginate(:page => params[:page], :per_page => 20).order('updated_at ASC')
  end

  def mostrar
  end

  def editar
  end

  def eliminar
    @medico.destroy
    respond_to do |format|
      format.html { redirect_to medico_url, notice: 'Medico eliminado con Exito.' }
    end
  end

  def update
    respond_to do |format|
      if @medico.update(medico_params)
        format.html{redirect_to medico_url, notice: 'Medico Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def nuevo
    @medico=Medico.new
  end

  def crear
    @medico = Medico.new(medico_params)
    respond_to do |format|
      if @medico.save
        format.html{redirect_to medico_url, notice:  'Medico Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end
  
  private

  #strong paramas
  def medico_params
    params.require(:medico).permit(:nombre)
  end

  #no repetiremos esto en todos los metodos
  def set_medico
    @medico = Medico.find(params[:id])
  end
end
