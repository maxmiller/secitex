class EquipesController < ApplicationController
  before_action :set_equipe, only: [:show, :edit, :update, :destroy]
  before_action :set_participante, only: [ :create ]
  before_action :auth_required

  def index
  	authorize! :index, Equipe
    @equipes = current_user.autenticavel.equipes
  end

  def new
    if Config.instance.permitir_inscricao_equipes?
      @equipe = Equipe.new
      @equipe.participante = current_user.autenticavel
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
        format.html { redirect_to equipes_path, notice: 'Equipe inscrita com sucesso!' }
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
      params.require(:equipe).permit(:nome, :participante_id, :aluno1, :aluno2, :aluno3, :aluno4, :matricula1, :matricula2, :matricula3, :matricula4, :status)
    end

    def set_participante
      params[:equipe][:participante_id] = current_user.autenticavel.id
    end

    def set_equipe
      @equipe = Equipe.find(params[:id])
    end


end
