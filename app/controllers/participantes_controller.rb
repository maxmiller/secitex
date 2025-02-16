class ParticipantesController < ApplicationController
  before_action :auth_required, :only => [ :participacao ]
  before_action :fix_isencao, :only => [ :create ]

  def participacao
    @participante = current_user.autenticavel
    authorize! :show, @participante
  end

  def pagar
    participante = Participante.find(params[:participante_id])
    pagamento = nil
    participante.pagamentos.each do |pgto|
      if Date.today <= pgto.prazo
        pagamento = pgto
        break
      end
    end
    if pagamento.nil? or Config.instance.dev?
      pagamento = Pagamento.gerar(participante)
    end

    if participante.pago?
      redirect_to participacao_path
    else
      redirect_to pagamento.mp_init_point
    end
  end

  def new
    if Config.instance.inscricoes_abertas?
      @participante = Participante.new
      @participante.usuario = Usuario.new
      render 'new', layout: 'publico'
    else
      redirect_to inscricoes_encerradas_path
    end
  end

  def create
    @participante = Participante.new(participante_params)
    respond_to do |format|
      @participante.atribuir_perfil
      if @participante.save #verify_recaptcha(model: @participante) && 
        session[:usuario_id] = @participante.usuario.id
        #ParticipanteMailer.inscricao_realizada(@participante).deliver_now
        format.html { redirect_to participacao_path, notice: 'Inscrição realizada com sucesso!' }
        format.json { render :show, status: :created, location: @participante }
      else
        format.html { render :new }
        format.json { render json: @participante.errors, status: :unprocessable_entity }
      end
    end
  end

  def inscricoes_encerradas
  end

  private

    def fix_isencao
      if params[:participante][:isento] == "0"
        params[:participante][:isento] = nil
      else
        params[:participante][:isento] = 1
      end
    end

    def participante_params
      params.require(:participante).permit(:campus_id, :documento, :tipo_participante_id, :cidade_id, :pais_id, :instituicao, :possui_necessidades_especiais, :necessidades_especiais, :pagamento_por_empenho, :nota_empenho, :isento, :motivo_isencao, usuario_attributes: [ :nome, :email, :password, :password_confirmation ])
      #params.require(:participante).permit(:tipo_participante_id, :instituicao, :campus_id, usuario_attributes: [ :nome, :email, :password, :password_confirmation ])
    end
end
