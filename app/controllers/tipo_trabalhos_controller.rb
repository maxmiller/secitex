class TipoTrabalhosController < ApplicationController
=begin
  def get_tipo_trabalhos_evento
    @tipo_trabalhos = TipoTrabalho.find( :all, :conditions => [" evento_id = ?", params[:id]]  ).sort_by{ |k| 
    k['nome'] }
    #@subsection = SubSection.find_all_by_section_id( params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @tipo_trabalhos }      
    end
  end
=end
  def get_tipo_trabalhos_by_evento
    @tipo_trabalhos = TipoTrabalho.where("evento_id = ?", params[:evento_id])
    respond_to do |format|
      format.json { render :json => @tipo_trabalhos }
    end
  end 
=begin
  def tipo_trabalhos_search
    if params[:evento].present? && params[:evento].strip != ""
      @linhas = TipoTrabalho.where("evento_id = ?", params[:evento])
    else
      @linhas = TipoTrabalho.all
    end
  end
=end
end
