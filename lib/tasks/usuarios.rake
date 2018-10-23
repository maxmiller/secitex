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

      avaliador1 = Usuario.create(nome: 'Gilene Moura Cavalcante de Medeiros', email: 'gilene_moura@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
      avaliador1 = Organizador.create(usuario: avaliador1)
      
      Membro.create(linha: linha_congic_filosofia, organizador: avaliador1, coordenador: false)
      Membro.create(linha: linha_congic_sociologia, organizador: avaliador1, coordenador: false)
      
      OrganizadorMailer.avaliador_cadastrado(avaliador1).deliver_now
      puts avaliador1.id.to_s
      sleep(15)

 
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

    puts "-----------------------------"
    puts "AVALIACÕES DA SECITEX - 08/10"
    puts "-----------------------------"
    puts "Avaliações Já realizadas"
    puts "Total: "+total_de_avaliacoes.to_s+" de "+(2*total_trabalhos).to_s
    puts "Mostra: "+total_de_avaliacoes_mostra.to_s+" de "+(2*total_trabalhos_mostra).to_s
    puts "Simpósio: "+total_de_avaliacoes_simposio.to_s+" de "+(2*total_trabalhos_simposio).to_s
    puts "CONGIC: "+total_de_avaliacoes_congic.to_s+" de "+(2*total_trabalhos_congic).to_s
    puts "-----------------------------"
    puts "Trabalhos com avaliação concluída"
    puts "Total: "+trabalhos_com_duas_avaliacoes_total.to_s+" de "+total_trabalhos.to_s
    puts "Mostra: "+trabalhos_com_duas_avaliacoes_mostra.to_s+" de "+total_trabalhos_mostra.to_s
    puts "Simpósio: "+trabalhos_com_duas_avaliacoes_simposio.to_s+" de "+total_trabalhos_simposio.to_s
    puts "CONGIC: "+trabalhos_com_duas_avaliacoes_congic.to_s+" de "+total_trabalhos_congic.to_s
    puts "-----------------------------"

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
    puts "Digite a quantidade de trabalhos"
    n = STDIN.gets
    i = 0
    puts "Digite o id do avaliador"
    avaliador_id = STDIN.gets
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
      break if i == n.to_i
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

  desc "Mostrar areas pendentes de avaliacao"
  task mostra_areas_pendentes: :environment do
    Trabalho.all.each do |trabalho|
      if trabalho.avaliacoes.length == 1
        puts trabalho.linha.evento.nome+";"+trabalho.linha.id.to_s+";"+trabalho.linha.nome
      elsif trabalho.avaliacoes.length == 0
        puts trabalho.linha.evento.nome+";"+trabalho.linha.id.to_s+";"+trabalho.linha.nome
        puts trabalho.linha.evento.nome+";"+trabalho.linha.id.to_s+";"+trabalho.linha.nome
      elsif trabalho.avaliacoes.length > 2
        puts "ERRO: "+trabalho.id.to_s
      end
    end
  end

  desc "Mostrar notas simposio"
  task mostra_notas_simposio: :environment do
    Trabalho.all.each do |trabalho|
      if trabalho.linha.evento.nome == "VI SIMPÓSIO DE EXTENSÃO"
        avaliacoes = trabalho.avaliacoes
        nota_1 = avaliacoes.first.criterio1.to_i + avaliacoes.first.criterio2.to_i + avaliacoes.first.criterio3.to_i + avaliacoes.first.criterio4.to_i + avaliacoes.first.criterio5.to_i + avaliacoes.first.criterio6.to_i
        nota_2 = avaliacoes.last.criterio1.to_i + avaliacoes.last.criterio2.to_i + avaliacoes.last.criterio3.to_i + avaliacoes.last.criterio4.to_i + avaliacoes.last.criterio5.to_i + avaliacoes.last.criterio6.to_i
        if trabalho.participante.campus.nome == "NENHUM"
          puts trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.participante.instituicao+";"+nota_1.to_s+";"+nota_2.to_s
        else
          puts trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.participante.campus.nome+";"+nota_1.to_s+";"+nota_2.to_s
        end
      end
    end
  end

  desc "Mostrar trabalhos simposio"
  task mostra_trabalhos_simposio: :environment do
    Trabalho.all.each do |trabalho|
      if trabalho.linha.evento.nome == "VI SIMPÓSIO DE EXTENSÃO"
        if trabalho.participante.campus.nome == "NENHUM"
          puts trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.linha.nome+";"+trabalho.participante.nome+";"+trabalho.participante.email+";"+trabalho.participante.instituicao+";---"
        else
          puts trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.linha.nome+";"+trabalho.participante.nome+";"+trabalho.participante.email+";"+trabalho.participante.instituicao+";"+trabalho.participante.campus.nome
        end
      end
    end
  end

  desc "Mostrar trabalhos simposio"
  task mostra_avaliadores_area: :environment do
    Membros.all.each do |membro|
      if membro.linhatrabalho.linha.evento.nome == "VI SIMPÓSIO DE EXTENSÃO"
        if trabalho.participante.campus.nome == "NENHUM"
          puts trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.participante.nome+";"+trabalho.participante.email+";"+trabalho.participante.instituicao+";---"
        else
          puts trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.participante.nome+";"+trabalho.participante.email+";"+trabalho.participante.instituicao+";"+trabalho.participante.campus.nome
        end
      end
    end
  end

  desc "Mostrar notas mostra"
  task mostra_notas_mostra: :environment do
    Trabalho.all.each do |trabalho|
      if trabalho.linha.evento.nome == "VI MOSTRA TECNOLÓGICA"
        avaliacoes = trabalho.avaliacoes
        nota_1 = avaliacoes.first.criterio1.to_i + avaliacoes.first.criterio2.to_i + avaliacoes.first.criterio3.to_i + avaliacoes.first.criterio4.to_i + avaliacoes.first.criterio5.to_i + avaliacoes.first.criterio6.to_i
        nota_2 = avaliacoes.last.criterio1.to_i + avaliacoes.last.criterio2.to_i + avaliacoes.last.criterio3.to_i + avaliacoes.last.criterio4.to_i + avaliacoes.last.criterio5.to_i + avaliacoes.last.criterio6.to_i
        if trabalho.participante.campus.nome == "NENHUM"
          puts trabalho.id.to_s+";"+trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.linha.nome+";"+trabalho.participante.instituicao+";"+nota_1.to_s+";"+nota_2.to_s
        else
          puts trabalho.id.to_s+";"+trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.linha.nome+";"+trabalho.participante.campus.nome+";"+nota_1.to_s+";"+nota_2.to_s
        end
      end
    end
  end

  desc "Mostrar notas congic"
  task mostra_notas_congic: :environment do
    Trabalho.all.each do |trabalho|
      if trabalho.linha.evento.nome == "XIV CONGIC"
        avaliacoes = trabalho.avaliacoes
        nota_1 = avaliacoes.first.criterio1.to_i + avaliacoes.first.criterio2.to_i + avaliacoes.first.criterio3.to_i + avaliacoes.first.criterio4.to_i + avaliacoes.first.criterio5.to_i + avaliacoes.first.criterio6.to_i
        nota_2 = avaliacoes.last.criterio1.to_i + avaliacoes.last.criterio2.to_i + avaliacoes.last.criterio3.to_i + avaliacoes.last.criterio4.to_i + avaliacoes.last.criterio5.to_i + avaliacoes.last.criterio6.to_i
        if trabalho.participante.campus.nome == "NENHUM"
          puts trabalho.id.to_s+";"+trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.linha.nome+";"+trabalho.participante.instituicao+";"+nota_1.to_s+";"+nota_2.to_s
        else
          puts trabalho.id.to_s+";"+trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.linha.nome+";"+trabalho.participante.campus.nome+";"+nota_1.to_s+";"+nota_2.to_s
        end
      end
    end
  end

  desc "Mostrar notas congic"
  task mostra_autores_congic: :environment do
    lista = [553,711,533,813,58,673,63,650,1154,370,577,821,554,828,805,686,1122,693,404,1076,987,835,520,644,657,59,651,284,1093,903,995,611,1004,1057,880,658,316,682,196,975,986,1097,223,197,1150,78,787,692,621,581,949,213,1096,483,723,192,1161,745,556,727,515,626,40,175,749,293,1173,1000,800,1071,294,1125,414,1188,1163,1072,1134,228,678,565,831,1018,531,336,302,281,335,1153,487,451,57,219,300,1049,51,448,449,873,1118,1101,275,664,1216,74,308,82,932,977,1042,592,951,809,354,424,892,1051,65,569,918,1009,180,322,280,174,207,1218,369,398,635,413,479,1002,76,298,608,557,1207,925,783,1113,1084,1067,894,1081,680,1159,70,610,769,641,712,579,288,319,751,526,119,1217,715,1034,34,646,893,286,1187,68,320,1136,1203,37,164,1063,1185,1041,489,1215,241,654,215,591,436,803,768,799,1210,191,941,629,950,395,1103,274,969,760,1098,605,541,22,410,756,229,559,910,382,934,301,1095,426,287,974,606,961,46,837,669,1177,911,753,689,168,1202,45,263,947,699,337,524,720,1214,1106,585,632,801,898,1117,899,1192,620,1206,244,747,325,471,1230,345,1031,616,962,990,1194,624,1143,1083,1190,1006,567,564,1108,922,1191,359,387,466,630,634,992,1212,959,530,884,1092,405,590,1012,743,936,528,636,886,970,353,628,868,937,1176,285,480,292,963,220,297,317,1088,570,201,676,907,218,1015,1043,409,200,973,790,555,777,960,1016,444,1121,397,640,881,279,617,163,642,516,1074,1048,603,660,1126,939,604,670,1038,232,305,341,435,518,1069,349,609,222,709,511,763,27,945,470,1032,736,415,1080,1227,252,721,473,1109]
    lista.each do |valor|
      trabalho = Trabalho.find_by(id: valor)
      if trabalho.linha.evento.nome == "XIV CONGIC"
        autores = trabalho.autores
        nome_autores = ""
        autores.each do |autor|
          nome_autores = nome_autores+";"+autor.nome
        end        
        if trabalho.participante.campus.nome == "NENHUM"
          puts trabalho.id.to_s+";"+trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.linha.nome+";"+trabalho.participante.instituicao+";"+nome_autores
        else
          puts trabalho.id.to_s+";"+trabalho.titulo+";"+trabalho.tipo_trabalho.nome+";"+trabalho.linha.nome+";"+trabalho.participante.campus.nome+";"+nome_autores
        end

      else
        puts "ERRO"
      end
    end
  end
  desc "Mostrar aptos nao selecionados congic"
  task mostra_aptos_nao_selecionado_congic: :environment do
    Trabalho.all.each do |trabalho|
      if trabalho.linha.evento.nome == "XIV CONGIC" && trabalho.situacao != 2
        puts trabalho.id.to_s+";"+trabalho.titulo+";"+trabalho.nota_geral.to_s+";"+trabalho.situacao.to_s
      end
    end
  end

  desc "Mostra participantes"
  task mostra_inscritos: :environment do
    Inscricao.all.each do |inscricao|
        puts inscricao.participante.nome+";"+inscricao.participante.email+";"+inscricao.minicurso.titulo
    end
  end

  desc "Mostrar trabalhos selecionados simposio"
  task mostra_trabalhos_selecionados_simposio: :environment do
    Trabalho.all.each do |trabalho|
      if trabalho.linha.evento.nome == "VI SIMPÓSIO DE EXTENSÃO" && trabalho.situacao == 2
        autores = trabalho.autores
        nome_autores = ""
        autores.each do |autor|
          nome_autores = nome_autores+"~"+autor.nome
        end
        if trabalho.participante.campus.nome == "NENHUM"
          puts trabalho.titulo+"~"+trabalho.tipo_trabalho.nome+"~"+trabalho.resumo+"~"+trabalho.participante.instituicao+"~---"+nome_autores
        else
          puts trabalho.titulo+"~"+trabalho.tipo_trabalho.nome+"~"+trabalho.resumo+"~"+trabalho.participante.instituicao+"~"+trabalho.participante.campus.nome+nome_autores
        end
      end
    end
  end


end
