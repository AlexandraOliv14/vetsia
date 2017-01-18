class MedicoshorariosController < ApplicationController
  before_action :set_medicoshorario, only: [:mostrar,:editar,:eliminar, :update]

  def index
    @medicoshorarios=Mh.paginate(:page => params[:page], :per_page => 20).order('updated_at ASC')
  end

  def mostrar
  end

  def editar
  end

  def eliminar
    @medicoshorario.destroy
    respond_to do |format|
      format.html { redirect_to medicoshorarios_url, notice: 'Medicoshorario eliminado con Exito.' }
    end
  end

  def update
    respond_to do |format|
      if @medicoshorario.update(medicoshorario_params)
        format.html{redirect_to medicoshorarios_url, notice: 'Medicoshorario Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def nuevo
    @medicoshorario =Mh.new
  end

  def crear
    @medicoshorario = Mh.new(medicoshorario_params)
    respond_to do |format|
      if @medicoshorario.save
        format.html{redirect_to medicoshorarios_url, notice:  'Medicoshorario Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end
  
  private

  #strong paramas
  def medicoshorario_params
    params.require(:medicoshorario).permit(:medico,:estado, :horaio)
  end

  #no repetiremos esto en todos los metodos
  def set_medicoshorario
    @medicoshorario = Mh.find(params[:id])
  end
end
