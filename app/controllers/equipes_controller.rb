class EquipesController < ApplicationController
  def index
  	authorize! :index, Equipe
    @equipes = current_user.autenticavel.equipes
  end

  def new
    if Config.instance.permitir_inscricao_equipes?
      @equipe = Equipe.new
      @equipe.participante = current_user.autenticavel
      @equipe.alunos.build(nome: "")
      @equipe.alunos.build(nome: "")
      authorize! :create, @equipe
    else
      redirect_to prazo_encerrado_equipes_path
    end

  end

  def create
    @equipe = Equipe.new(equipe_params)
    authorize! :create, Equipe
    respond_to do |format|
      if @equipe.save
        ParticipanteMailer.equipe_inscrita(@equipe.participante, @equipe).deliver_now
        format.html { redirect_to trabalhos_path, notice: 'Equipe inscrita com sucesso!' }
        format.json { render :show, status: :created, location: @equipe }
      else
        format.html { render :new }
        format.json { render json: @equipe.errors, status: :unprocessable_entity }
      end
    end
  end


  def show
  	authorize! :show, @equipe
  end

  def edit
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def equipe_params
      params.require(:equipe).permit(:nome, :participante_id, alunos_attributes: [ :nome ])
    end

end
