namespace :usuarios do

  desc "Redefinir senhas padrão"
  task redefinir_senhas: :environment do

    print "Redefinido senhas padrão... "
    Organizador.all.each do |organizador|
      usuario = Usuario.autenticar(organizador.email, '321mud@r')
      if usuario.present?
        usuario.update_attribute(:password, SecureRandom.hex(20))
      end
    end
    puts "Concluído!"

  end

  desc "Adicionar coordenadores"
  task adicionar_coordenadores: :environment do
    puts "Criando coordenadores... "
    coordenador_comissao_cientifica = Perfil.find_by(slug: 'coordenador_comissao_cientifica')
    sarah = Usuario.create(nome: 'Sarah Thomaz de Lima Sá', email: 'sarah.sa@ifrn.edu.br', password: '#$852$#', perfil: coordenador_comissao_cientifica)
    sarah = Organizador.create(usuario: sarah)

    ramon = Usuario.create(nome: 'Ramon Evangelista dos Anjos Paiva', email: 'ramonpaiva.prof@gmail.com', password: '#$852$#', perfil: coordenador_comissao_cientifica)
    ramon = Organizador.create(usuario: ramon)


    puts "Concluído!"
  end

  desc "Adicionar avaliadores"
  task adicionar_avaliadores: :environment do
      puts "Criando avaliadores... "
      membro_comissao_cientifica = Perfil.find_by(slug: 'membro_comissao_cientifica')

      linha_simposio_comunicacao  = Linha.find_by(nome: 'Comunicação')
      linha_simposio_cultura  = Linha.find_by(nome: 'Cultura')
      linha_simposio_direitos_humanos_justica  = Linha.find_by(nome: 'Direitos Humanos e Justiça')
      linha_simposio_educacao  = Linha.find_by(nome: 'Educação')
      linha_simposio_meio_ambiente  = Linha.find_by(nome: 'Meio Ambiente')
      linha_simposio_saude  = Linha.find_by(nome: 'Saúde')
      linha_simposio_tecnologia_producao  = Linha.find_by(nome: 'Tecnologia e Produção')
      linha_simposio_trabalho  = Linha.find_by(nome: 'Trabalho')
      linha_mostra_artes_letras_linguistica  = Linha.find_by(nome: 'Artes, Letras e Linguística')
      linha_mostra_ciencias_agrarias  = Linha.find_by(nome: 'Ciências Agrárias')
      linha_mostra_ciencias_biologicas  = Linha.find_by(nome: 'Ciências Biológicas')
      linha_mostra_ciencias_saude  = Linha.find_by(nome: 'Ciências da Saúde')
      linha_mostra_ciencias_exatas_terra  = Linha.find_by(nome: 'Ciências Exatas e da Terra')
      linha_mostra_ciencias_humanas  = Linha.find_by(nome: 'Ciências Humanas')
      linha_mostra_ciencias_sociais_aplicadas  = Linha.find_by(nome: 'Ciências Sociais Aplicadas')
      linha_mostra_engenharias  = Linha.find_by(nome: 'Engenharias')
      linha_congic_artes  = Linha.find_by(nome: 'ARTES, LETRAS E LINGUÍSTICA - Artes')
      linha_congic_letras  = Linha.find_by(nome: 'ARTES, LETRAS E LINGUÍSTICA - Letras')
      linha_congic_linguistica  = Linha.find_by(nome: 'ARTES, LETRAS E LINGUÍSTICA - Linguística')
      linha_congic_agronomia  = Linha.find_by(nome: 'CIÊNCIAS AGRÁRIAS - Agronomia')
      linha_congic_ciencias_tecnologia_alimentos  = Linha.find_by(nome: 'CIÊNCIAS AGRÁRIAS - Ciências e Tecnologia dos Alimentos')
      linha_congic_engenharia_agricola  = Linha.find_by(nome: 'CIÊNCIAS AGRÁRIAS - Engenharia Agrícola')
      linha_congic_recursos_florestais_engenharia_florestal  = Linha.find_by(nome: 'CIÊNCIAS AGRÁRIAS - Recursos Florestais e Engenharia Florestal')
      linha_congic_recursos_pesqueiros_engenharia_pesca  = Linha.find_by(nome: 'CIÊNCIAS AGRÁRIAS - Recursos Pesqueiros e Engenharia de Pesca')
      linha_congic_zootecnia_e_medicina_veterinaria  = Linha.find_by(nome: 'CIÊNCIAS AGRÁRIAS - Zootecnia e Medicina Veterinária')
      linha_congic_biofisica  = Linha.find_by(nome: 'CIÊNCIAS BIOLÓGICAS - Biofísica')
      linha_congic_biologia_geral  = Linha.find_by(nome: 'CIÊNCIAS BIOLÓGICAS - Biologia Geral')
      linha_congic_bioquimica  = Linha.find_by(nome: 'CIÊNCIAS BIOLÓGICAS - Bioquímica')
      linha_congic_botanica  = Linha.find_by(nome: 'CIÊNCIAS BIOLÓGICAS - Botânica')
      linha_congic_ecologia_meio_ambiente  = Linha.find_by(nome: 'CIÊNCIAS BIOLÓGICAS - Ecologia e Meio Ambiente')
      linha_congic_microbiologia  = Linha.find_by(nome: 'CIÊNCIAS BIOLÓGICAS - Microbiologia')
      linha_congic_enfermagem  = Linha.find_by(nome: 'CIÊNCIAS DA SAÚDE - Enfermagem')
      linha_congic_educacao_fisica  = Linha.find_by(nome: 'CIÊNCIAS DA SAÚDE - Educação Física')
      linha_congic_saude_coletiva  = Linha.find_by(nome: 'CIÊNCIAS DA SAÚDE - Saúde Coletiva')
      linha_congic_astronomia  = Linha.find_by(nome: 'CIÊNCIAS EXATAS E DA TERRA - Astronomia')
      linha_congic_ciencias_computacao  = Linha.find_by(nome: 'CIÊNCIAS EXATAS E DA TERRA - Ciências da Computação')
      linha_congic_fisica  = Linha.find_by(nome: 'CIÊNCIAS EXATAS E DA TERRA - Física')
      linha_congic_geociencias  = Linha.find_by(nome: 'CIÊNCIAS EXATAS E DA TERRA - Geociências')
      linha_congic_matematica  = Linha.find_by(nome: 'CIÊNCIAS EXATAS E DA TERRA - Matemática')
      linha_congic_quimica  = Linha.find_by(nome: 'CIÊNCIAS EXATAS E DA TERRA - Química')
      linha_congic_educacao  = Linha.find_by(nome: 'CIÊNCIAS HUMANAS - Educação')
      linha_congic_filosofia  = Linha.find_by(nome: 'CIÊNCIAS HUMANAS - Filosofia')
      linha_congic_geografia  = Linha.find_by(nome: 'CIÊNCIAS HUMANAS - Geografia')
      linha_congic_historia  = Linha.find_by(nome: 'CIÊNCIAS HUMANAS - História')
      linha_congic_sociologia  = Linha.find_by(nome: 'CIÊNCIAS HUMANAS - Sociologia')
      linha_congic_administracao  = Linha.find_by(nome: 'CIÊNCIAS SOCIAIS APLICADAS - Administração')
      linha_congic_arquitetura_urbanismo  = Linha.find_by(nome: 'CIÊNCIAS SOCIAIS APLICADAS - Arquitetura e Urbanismo')
      linha_congic_comunicacao  = Linha.find_by(nome: 'CIÊNCIAS SOCIAIS APLICADAS - Comunicação')
      linha_congic_direito  = Linha.find_by(nome: 'CIÊNCIAS SOCIAIS APLICADAS - Direito')
      linha_congic_economia  = Linha.find_by(nome: 'CIÊNCIAS SOCIAIS APLICADAS - Economia')
      linha_congic_servico_social  = Linha.find_by(nome: 'CIÊNCIAS SOCIAIS APLICADAS - Serviço Social')
      linha_congic_turismo  = Linha.find_by(nome: 'CIÊNCIAS SOCIAIS APLICADAS - Turismo')
      linha_congic_engenharia_civil  = Linha.find_by(nome: 'ENGENHARIAS - Engenharia Civil')
      linha_congic_engenharia_materiais_metalurgica  = Linha.find_by(nome: 'ENGENHARIAS - Engenharia de Materiais e Metalúrgica')
      linha_congic_engenharia_minas  = Linha.find_by(nome: 'ENGENHARIAS - Engenharia de Minas')
      linha_congic_engenharia_producao  = Linha.find_by(nome: 'ENGENHARIAS - Engenharia de Produção')
      linha_congic_engenharia_eletrica  = Linha.find_by(nome: 'ENGENHARIAS - Engenharia Elétrica')
      linha_congic_engenharia_mecanica  = Linha.find_by(nome: 'ENGENHARIAS - Engenharia Mecânica')
      linha_congic_engenharia_quimica  = Linha.find_by(nome: 'ENGENHARIAS - Engenharia Química')
      linha_congic_engenharia_sanitaria  = Linha.find_by(nome: 'ENGENHARIAS - Engenharia Sanitária')

      puts "Criando usuário gustavo.brito@ifrn.edu.br"

      avaliador1 = Usuario.create(nome: 'Marinaldo Pinheiro de Sousa Neto', email: 'sousaneto1@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
      avaliador1 = Organizador.create(usuario: avaliador1)
      Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador1, coordenador: false)
      OrganizadorMailer.avaliador_cadastrado(avaliador1).deliver_now
=begin
      avaliador1 = Usuario.find_by(email: 'artur.albuquerque@ifrn.edu.br')
      avaliador1 = Organizador.find_by(usuario: avaliador1)

#      puts "Criando usuário renan.santos@ifrn.edu.br"
      avaliador2 = Usuario.find_by(email: 'gustavo.brito@ifrn.edu.br')
      avaliador2 = Organizador.find_by(usuario: avaliador2)
      
      Membro.create(linha: linha_simposio_cultura, organizador: avaliador2, coordenador: false)
      Membro.create(linha: linha_simposio_educacao, organizador: avaliador2, coordenador: false)
      Membro.create(linha: linha_simposio_saude, organizador: avaliador2, coordenador: false)

      OrganizadorMailer.avaliador_cadastrado(avaliador1).deliver_now
      sleep(15)
      OrganizadorMailer.avaliador_cadastrado(avaliador2).deliver_now
 =end
=begin
      avaliador2 = Usuario.create(nome: 'Anísia Karla de Lima Galvão', email: 'aklg2@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
      avaliador2 = Organizador.create(usuario: avaliador2)
      Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador2, coordenador: false)
      Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador2, coordenador: false)

      puts "Procurando usuário thiago.loureiro@ifrn.edu.br"
      avaliador18 = Usuario.find_by(email: 'thiago.loureiro@ifrn.edu.br')
      avaliador18 = Organizador.find_by(usuario: avaliador18)
      Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador18, coordenador: false)
      Membro.create(linha: linha_simposio_educacao, organizador: avaliador18, coordenador: false)
      Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador18, coordenador: false)
      Membro.create(linha: linha_simposio_trabalho, organizador: avaliador18, coordenador: false)
      OrganizadorMailer.avaliador_cadastrado(avaliador18).deliver_now


      puts "Procurando usuário charles.souza@ifrn.edu.br"
      avaliador17 = Usuario.find_by(email: 'charles.souza@ifrn.edu.br')
      avaliador17 = Organizador.find_by(usuario: avaliador17)
      Membro.create(linha: linha_congic_artes, organizador: avaliador17, coordenador: false)
      Membro.create(linha: linha_congic_comunicacao, organizador: avaliador17, coordenador: false)
=end     
      puts "Concluído!"
  end

  desc "Notificar Cadastro de Avaliadores"
  task notificar_cadastro_avaliador: :environment do

      avaliador252 = Usuario.find_by(email: 'danielaterto@gmail.com')
      avaliador252 = Organizador.find_by(usuario: avaliador252)

      OrganizadorMailer.avaliador_cadastrado(avaliador252).deliver_now
      sleep(15)

      avaliador253 = Usuario.find_by(email: 'aklg2@yahoo.com.br')
      avaliador253 = Organizador.find_by(usuario: avaliador253)
      OrganizadorMailer.avaliador_cadastrado(avaliador253).deliver_now
      sleep(15)

      avaliador254 = Usuario.find_by(email: 'patricia.souza@ifrn.edu.br')
      avaliador254 = Organizador.find_by(usuario: avaliador254)
      OrganizadorMailer.avaliador_cadastrado(avaliador254).deliver_now
      sleep(15)

      avaliador255 = Usuario.find_by(email: 'charles.souza@ifrn.edu.br')
      avaliador255 = Organizador.find_by(usuario: avaliador255)
      OrganizadorMailer.avaliador_cadastrado(avaliador255).deliver_now
      sleep(15)

    puts "Concluído!"
  end

  desc "Atribuir avaliadores"
  task atribuir_avaliadores: :environment do
    i = 0
    Trabalho.all.each do |trabalho|
      i = i + 1
      puts "Sorteando "+i.to_s+"º trabalho: "+trabalho.titulo+" id= "+trabalho.id.to_s
      trabalho.definir_avaliadores
      puts "Finalizado"
    end
    puts "Total de: "+i.to_s+" trabalhos"
    puts "Concluído"
  end

  desc "Conta avaliacoes"
  task conta_avaliacoes: :environment do
    total_trabalhos = Trabalho.all.length
    total_trabalhos_congic = 0
    total_trabalhos_mostra = 0
    total_trabalhos_simposio = 0
    Trabalho.all.each do |trabalho|
      if trabalho.linha.evento.nome == "VI SIMPÓSIO DE EXTENSÃO"
        total_trabalhos_simposio = total_trabalhos_simposio + 1
      elsif trabalho.linha.evento.nome == "VI MOSTRA TECNOLÓGICA"
        total_trabalhos_mostra = total_trabalhos_mostra + 1
      elsif trabalho.linha.evento.nome == "XIV CONGIC"
        total_trabalhos_congic = total_trabalhos_congic + 1
      end
    end
    puts "Total de trabalhos do CONGIC: "+total_trabalhos_congic.to_s
    puts "Total de trabalhos do SIMPÓSIO: "+total_trabalhos_simposio.to_s
    puts "Total de trabalhos da MOSTRA: "+total_trabalhos_mostra.to_s

    trabalhos_com_zero_avaliacoes_total = 0
    trabalhos_com_zero_avaliacoes_congic = 0
    trabalhos_com_zero_avaliacoes_simposio = 0
    trabalhos_com_zero_avaliacoes_mostra = 0
    trabalhos_com_uma_avaliacao_total = 0
    trabalhos_com_uma_avaliacao_congic = 0
    trabalhos_com_uma_avaliacao_simposio = 0
    trabalhos_com_uma_avaliacao_mostra = 0
    trabalhos_com_duas_avaliacoes_total = 0
    trabalhos_com_duas_avaliacoes_congic = 0
    trabalhos_com_duas_avaliacoes_simposio = 0
    trabalhos_com_duas_avaliacoes_mostra = 0
    Trabalho.all.each do |trabalho|
      avaliacoes = trabalho.avaliacoes
      numero_de_avaliadores = trabalho.avaliadores.length
      if numero_de_avaliadores == 0
        trabalhos_com_zero_avaliacoes_total = trabalhos_com_zero_avaliacoes_total + 1
        if trabalho.linha.evento.nome == "VI SIMPÓSIO DE EXTENSÃO"
          trabalhos_com_zero_avaliacoes_simposio = trabalhos_com_zero_avaliacoes_simposio + 1
        elsif trabalho.linha.evento.nome == "VI MOSTRA TECNOLÓGICA"
          trabalhos_com_zero_avaliacoes_mostra = trabalhos_com_zero_avaliacoes_mostra + 1
        elsif trabalho.linha.evento.nome == "XIV CONGIC"
          trabalhos_com_zero_avaliacoes_congic = trabalhos_com_zero_avaliacoes_congic + 1
        end
      elsif numero_de_avaliadores == 1
        trabalhos_com_uma_avaliacao_total = trabalhos_com_uma_avaliacao_total + 1 if avaliacoes.first.situacao == 5
        trabalhos_com_zero_avaliacoes_total = trabalhos_com_zero_avaliacoes_total + 1 if avaliacoes.first.situacao == 0
        if trabalho.linha.evento.nome == "VI SIMPÓSIO DE EXTENSÃO"
          trabalhos_com_uma_avaliacao_simposio = trabalhos_com_uma_avaliacao_simposio + 1 if avaliacoes.first.situacao == 5
          trabalhos_com_zero_avaliacoes_simposio = trabalhos_com_zero_avaliacoes_simposio + 1 if avaliacoes.first.situacao == 0
        elsif trabalho.linha.evento.nome == "VI MOSTRA TECNOLÓGICA"
          trabalhos_com_uma_avaliacao_mostra = trabalhos_com_uma_avaliacao_mostra + 1 if avaliacoes.first.situacao == 5
          trabalhos_com_zero_avaliacoes_mostra = trabalhos_com_zero_avaliacoes_mostra + 1 if avaliacoes.first.situacao == 0
        elsif trabalho.linha.evento.nome == "XIV CONGIC"
          trabalhos_com_uma_avaliacao_congic = trabalhos_com_uma_avaliacao_congic + 1 if avaliacoes.first.situacao == 5
          trabalhos_com_zero_avaliacoes_congic = trabalhos_com_zero_avaliacoes_congic + 1 if avaliacoes.first.situacao == 0
        end
      elsif numero_de_avaliadores == 2
          trabalhos_com_duas_avaliacoes_total = trabalhos_com_duas_avaliacoes_total + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 10
          trabalhos_com_uma_avaliacao_total = trabalhos_com_uma_avaliacao_total + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 5
          trabalhos_com_zero_avaliacoes_total = trabalhos_com_zero_avaliacoes_total + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 0
        if trabalho.linha.evento.nome == "VI SIMPÓSIO DE EXTENSÃO"
          trabalhos_com_duas_avaliacoes_simposio = trabalhos_com_duas_avaliacoes_simposio + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 10
          trabalhos_com_uma_avaliacao_simposio = trabalhos_com_uma_avaliacao_simposio + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 5
          trabalhos_com_zero_avaliacoes_simposio = trabalhos_com_zero_avaliacoes_simposio + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 0
        elsif trabalho.linha.evento.nome == "VI MOSTRA TECNOLÓGICA"
          trabalhos_com_duas_avaliacoes_mostra = trabalhos_com_duas_avaliacoes_mostra + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 10
          trabalhos_com_uma_avaliacao_mostra = trabalhos_com_uma_avaliacao_mostra + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 5
          trabalhos_com_zero_avaliacoes_mostra = trabalhos_com_zero_avaliacoes_mostra + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 0
        elsif trabalho.linha.evento.nome == "XIV CONGIC"
          trabalhos_com_duas_avaliacoes_congic = trabalhos_com_duas_avaliacoes_congic + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 10
          trabalhos_com_uma_avaliacao_congic = trabalhos_com_uma_avaliacao_congic + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 5
          trabalhos_com_zero_avaliacoes_congic = trabalhos_com_zero_avaliacoes_congic + 1 if (avaliacoes.first.situacao + avaliacoes.last.situacao ) == 0
        end
      end
    end
    total_de_avaliacoes = 2*trabalhos_com_duas_avaliacoes_total+trabalhos_com_uma_avaliacao_total;
    total_de_avaliacoes_mostra = 2*trabalhos_com_duas_avaliacoes_mostra+trabalhos_com_uma_avaliacao_mostra;
    total_de_avaliacoes_simposio = 2*trabalhos_com_duas_avaliacoes_simposio+trabalhos_com_uma_avaliacao_simposio;
    total_de_avaliacoes_congic = 2*trabalhos_com_duas_avaliacoes_congic+trabalhos_com_uma_avaliacao_congic;
    puts "TOTAL TRABALHOS SUBMETIDOS: "+total_trabalhos.to_s
    puts "TOTAL DE AVALIAÇÕES JÁ REALIZADAS: "+total_de_avaliacoes.to_s
    puts "Trabalhos com 0 avaliacoes total: "+trabalhos_com_zero_avaliacoes_total.to_s
    puts "Trabalhos com 1 avaliacao total: "+trabalhos_com_uma_avaliacao_total.to_s
    puts "Trabalhos com 2 avaliacoes total: "+trabalhos_com_duas_avaliacoes_total.to_s
    puts "TOTAL DE AVALIAÇÕES JÁ REALIZADAS MOSTRA: "+total_de_avaliacoes_mostra.to_s
    puts "Trabalhos com 0 avaliacoes total mostra: "+trabalhos_com_zero_avaliacoes_mostra.to_s
    puts "Trabalhos com 1 avaliacao total mostra: "+trabalhos_com_uma_avaliacao_mostra.to_s
    puts "Trabalhos com 2 avaliacoes total mostra: "+trabalhos_com_duas_avaliacoes_mostra.to_s
    puts "TOTAL DE AVALIAÇÕES JÁ REALIZADAS SIMPOSIO: "+total_de_avaliacoes_simposio.to_s
    puts "Trabalhos com 0 avaliacoes total simposio: "+trabalhos_com_zero_avaliacoes_simposio.to_s
    puts "Trabalhos com 1 avaliacao total simposio: "+trabalhos_com_uma_avaliacao_simposio.to_s
    puts "Trabalhos com 2 avaliacoes total simposio: "+trabalhos_com_duas_avaliacoes_simposio.to_s
    puts "TOTAL DE AVALIAÇÕES JÁ REALIZADAS CONGIC: "+total_de_avaliacoes_congic.to_s
    puts "Trabalhos com 0 avaliacoes total congic: "+trabalhos_com_zero_avaliacoes_congic.to_s
    puts "Trabalhos com 1 avaliacao total congic: "+trabalhos_com_uma_avaliacao_congic.to_s
    puts "Trabalhos com 2 avaliacoes total congic: "+trabalhos_com_duas_avaliacoes_congic.to_s

    puts "Concluído"
  end

  task remove_avaliacoes_pendentes: :environment do
    i = 0
    Trabalho.all.each do |trabalho|
      avaliacoes = trabalho.avaliacoes
      avaliacoes.each do |avaliacao|
               
        i = i + 1 if (avaliacao.situacao == 0 && trabalho.linha.evento.nome != "VI MOSTRA TECNOLÓGICA")

        avaliacao.destroy if (avaliacao.situacao == 0 && trabalho.linha.evento.nome != "VI MOSTRA TECNOLÓGICA")
      end
    end
    puts i.to_s
  end

  desc "Atribuir avaliacoes para um avaliador"
  task atribuir_avaliacoes_para_avaliador: :environment do
    n = 5
    i = 0
    avaliador_id = 15
    avaliador = Usuario.find_by(autenticavel_id: avaliador_id)
    avaliador = Organizador.find_by(usuario: avaliador)

    Trabalho.all.each do |trabalho|
      avaliador_possui_area = avaliador.linhas.ids.include?trabalho.linha.id
      if trabalho.avaliacoes.length < 2 && avaliador_possui_area
        if trabalho.avaliacoes.length == 1 && trabalho.avaliacoes.first.organizador == avaliador
          puts "Avaliador já avalia trabalho "+trabalho.id.to_s
        else
          i = i + 1
          puts "Adicionando "+avaliador.nome+" em "+trabalho.titulo+" ("+trabalho.id.to_s+")"
          trabalho.definir_avaliacao_para_avaliador(avaliador)
          puts "Finalizado"
        end
      end
      break if i == n
    end
    puts "Total de: "+i.to_s+" trabalhos atribuidos"
    puts "Concluído"
  end

  desc "Mostrar avaliacoes pendentes"
  task mostra_avaliacoes_pendentes: :environment do
    Trabalho.all.each do |trabalho|
      avaliacoes = trabalho.avaliacoes
      avaliacoes.each do |avaliacao|
        avaliador = avaliacao.organizador
        if avaliacao.situacao == 0 && trabalho.linha.evento.nome != "VI MOSTRA TECNOLÓGICA"
          puts avaliacao.id.to_s+";"+avaliacao.created_at.to_s+";"+trabalho.linha.evento.nome+";"++trabalho.linha.id.to_s+";"+trabalho.linha.nome+";"+trabalho.id.to_s+";"+avaliador.nome+";"+avaliador.email
        end
      end
    end
  end

  desc "Mostrar avaliadores que nao avaliaram nada"
  task mostra_avaliadores_zerados: :environment do
    Membro.all.each do |avaliador|
      cont = 0
      if avaliador.linha.evento.nome != "VI MOSTRA TECNOLÓGICA"
        avaliacoes = AvaliacaoTrabalho.where(organizador_id: avaliador.organizador.id)
        avaliacoesPendentes = AvaliacaoTrabalho.where(organizador_id: avaliador.organizador.id).where(situacao: 0)
        avaliacoesFinalizadas = AvaliacaoTrabalho.where(organizador_id: avaliador.organizador.id).where(situacao: 5)
        if avaliacoesFinalizadas.length == 0 and avaliador.created_at < Time.parse("2018-10-01")
          puts "=========> Remover: "+avaliador.created_at.to_s+";"+avaliador.organizador.nome+";"+avaliador.linha.evento.nome+";"+avaliador.linha.nome+";"+avaliacoes.length.to_s+";"+avaliacoesPendentes.length.to_s+";"+avaliacoesFinalizadas.length.to_s
          avaliacoesPendentes.all.each do |avaliacao_pendente|
              puts avaliacao_pendente.situacao
              #avaliacao_pendente.destroy
          end
        else
          #puts avaliador.created_at.to_s+";"+avaliador.organizador.nome+";"+avaliador.linha.evento.nome+";"+avaliador.linha.nome+";"+avaliacoes.length.to_s+";"+avaliacoesPendentes.length.to_s+";"+avaliacoesFinalizadas.length.to_s
        end
        
      end
    end
  end

end
