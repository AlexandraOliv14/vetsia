class TipoAtencionesController < ApplicationController
  before_action :set_tipo_atencion, only: [:mostrar,:editar,:eliminar, :update]
  
  def index
    @tipo_atenciones=TipoAtencion.paginate(:page => params[:page], :per_page => 20).order('updated_at ASC')
  end

  def mostrar
  end

  def editar
  end

  def eliminar
    @tipo_atencion.destroy
    respond_to do |format|
      format.html { redirect_to tipo_atenciones_url, notice: 'tipo de atencion eliminado con Exito.' }
    end
  end

  def update
    respond_to do |format|
      if @tipo_atencion.update(tipo_atencion_params)
        format.html{redirect_to tipo_atenciones_url, notice: 'Tipo de atencion Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def nuevo
    @tipo_atencion=TipoAtencion.new
  end

  def crear
    @tipo_atencion = TipoAtencion.new(tipo_atencion_params)
    respond_to do |format|
      if @tipo_atencion.save
        format.html{redirect_to tipo_atenciones_url, notice:  'Tipo de atencion Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end
  
   private

  #strong paramas
  def tipo_atencion_params
    params.require(:tipo_atencion).permit(:descripcion)
  end

  #no repeteriemos esto en todos los metodos
  def set_tipo_atencion
    @tipo_atencion = TipoAtencion.find(params[:id])
  end
end
