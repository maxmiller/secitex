class TrabalhosController < ApplicationController
  before_action :set_trabalho, only: [:show, :edit, :update, :destroy]
  before_action :set_participante, only: [ :create ]
  before_action :auth_required

  # GET /trabalhos
  # GET /trabalhos.json
  def index
    authorize! :index, Trabalho
    @trabalhos = current_user.autenticavel.trabalhos
  end

  # GET /trabalhos/1
  # GET /trabalhos/1.json
  def show
    authorize! :show, @trabalho
  end

  # GET /trabalhos/new
  def new
    if Config.instance.permitir_submissao_trabalhos?
      @trabalho = Trabalho.new
      @trabalho.participante = current_user.autenticavel
      @trabalho.autores.build(nome: current_user.autenticavel.nome)
      authorize! :create, @trabalho
    else
      redirect_to prazo_encerrado_trabalhos_path
    end

  end

  # GET /trabalhos/1/edit
  def edit
    authorize! :update, @trabalho
  end

  # POST /trabalhos
  # POST /trabalhos.json
  def create
    @trabalho = Trabalho.new(trabalho_params)
    @trabalho.situacao = Trabalho::SITUACOES[:pendente]
    authorize! :create, Trabalho
    respond_to do |format|
      if @trabalho.save
       # ParticipanteMailer.trabalho_submetido(@trabalho.participante, @trabalho).deliver_now
        format.html { redirect_to trabalhos_path, notice: 'Trabalho enviado com sucesso!' }
        format.json { render :show, status: :created, location: @trabalho }
      else
        puts(@trabalho.errors.full_messages)
        format.html { render :new, notice: @trabalho.errors }
        format.json { render json: @trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabalhos/1
  # PATCH/PUT /trabalhos/1.json
  def update
    authorize! :update, @trabalho
    respond_to do |format|
      if @trabalho.update(trabalho_params)
        format.html { redirect_to @trabalho, notice: 'Trabalho atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @trabalho }
      else
        format.html { render :edit }
        format.json { render json: @trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabalhos/1
  # DELETE /trabalhos/1.json
  def destroy
    authorize! :destroy, @trabalho
    @trabalho.destroy
    respond_to do |format|
      format.html { redirect_to trabalhos_url, notice: 'Trabalho excluído com sucesso!' }
      format.json { head :no_content }
    end
  end

  def prazo_encerrado
  end

  def aceite
    @trabalho = Trabalho.find(params[:trabalho_id])
    authorize! :aceite, @trabalho
    if @trabalho.aprovado?
      respond_to do |format|
        format.pdf do
          render pdf: 'aceite',
                 layout: 'aceite',
                 orientation: 'Portrait',
                 page_size: 'A4',
                 show_as_html: params.key?('debug')
        end
      end
    else
      redirect_to trabalhos_path, alert: 'Trabalho com avaliação pendente ou não aprovado!'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabalho
      @trabalho = Trabalho.includes(:linha, :participante, :tipo_trabalho, :avaliacoes, :autores).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trabalho_params
      params.require(:trabalho).permit(:evento_id, :titulo, :resumo, :linha_id, :participante_id, :tipo_trabalho_id, :arquivo, :arquivo_final, autores_attributes: [ :nome ], evento_attributes: [ :id])
    end

    def set_participante
      if current_user.participante?
        params[:trabalho][:participante_id] = current_user.autenticavel.id
      end
    end
end
