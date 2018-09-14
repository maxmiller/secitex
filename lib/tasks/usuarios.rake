namespace :usuarios do

  desc "Redefinir senhas padrão"
  task redefinir_senhas: :environment do

    print "Redefinido senhas padrão... "
    Organizador.all.each do |organizador|
      usuario = Usuario.autenticar(organizador.email, '')
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
    marcio = Usuario.create(nome: 'Márcio Adriano de Azevedo', email: 'marcio.azevedo@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    marcio = Organizador.create(usuario: marcio)
    nadir = Usuario.create(nome: 'Nadir Arruda Skeete', email: 'nadir.arruda@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    nadir = Organizador.create(usuario: nadir)
    charles = Usuario.create(nome: 'Charles Bamam Medeiros de Souza', email: 'charles.souza@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    charles = Organizador.create(usuario: charles)
    darlyne = Usuario.create(nome: 'Darlyne Fontes Virginio', email: 'darlyne.fontes@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    darlyne = Organizador.create(usuario: darlyne)
    joao = Usuario.create(nome: 'João Teixeira de Carvalho Neto', email: 'joao.teixeira@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    joao = Organizador.create(usuario: joao)
    paulo = Usuario.create(nome: 'Paulo Pereira da Silva', email: 'paulo.pereira@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    paulo = Organizador.create(usuario: paulo)
    rafael = Usuario.create(nome: 'Rafael Hernandez Damascena dos Passos', email: 'rafael.passos@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    rafael = Organizador.create(usuario: rafael)
    rodrigo_luiz = Usuario.create(nome: 'Rodrigo Luiz Silva Pessoa', email: 'rodrigo.pessoa@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    rodrigo_luiz = Organizador.create(usuario: rodrigo_luiz)
    patricia = Usuario.create(nome: 'Patricia da Silva Souza Martins', email: 'patricia.souza@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    patricia = Organizador.create(usuario: patricia)
    elizomar = Usuario.create(nome: 'Elizomar de Assis Nobre', email: 'elizomar.nobre@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    elizomar = Organizador.create(usuario: elizomar)
    rodrigo_siqueira = Usuario.create(nome: 'Rodrigo Siqueira Martins', email: 'rodrigo.siqueira@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    rodrigo_siqueira = Organizador.create(usuario: rodrigo_siqueira)
    regia = Usuario.create(nome: 'Régia Lúcia Lopes', email: 'regia.lopes@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    regia = Organizador.create(usuario: regia)
    sandra = Usuario.create(nome: 'Sandra Maria da Nóbrega', email: 'sandra.nobrega@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    sandra = Organizador.create(usuario: sandra)
    thiago = Usuario.create(nome: 'Thiago José de Azevedo Loureiro', email: 'thiago.loureiro@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    thiago = Organizador.create(usuario: thiago)
    marcus = Usuario.create(nome: 'Marcus Vinícius Duarte Sampaio', email: 'marcus.sampaio@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    marcus = Organizador.create(usuario: marcus)
    marcelo = Usuario.create(nome: 'Marcelo Henrique Carneiro Camilo', email: 'marcelo.camilo@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    marcelo = Organizador.create(usuario: marcelo)
    jussara = Usuario.create(nome: 'Jussara Benvindo Neri', email: 'jussara.neri@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    jussara = Organizador.create(usuario: jussara)
    fernando = Usuario.create(nome: 'Fernando Antonio da Silva', email: 'fernando.silva@ifrn.edu.br', password: '', perfil: coordenador_comissao_cientifica)
    fernando = Organizador.create(usuario: fernando)
    puts "Concluído!"
  end

  desc "Adicionar avaliadores"
  task adicionar_avaliadores: :environment do
      puts "Criando avaliadores... "
      membro_comissao_cientifica = Perfil.find_by(slug: 'membro_comissao_cientifica')

      avaliador1 = Usuario.create(nome: 'Avaliador Número 1', email: 'avaliador1@ifrn.edu.br', password: '123456', perfil: membro_comissao_cientifica)
      avaliador1 = Organizador.create(usuario: avaliador1)
      avaliador2 = Usuario.create(nome: 'Avaliador Número 2', email: 'avaliador2@ifrn.edu.br', password: '123456', perfil: membro_comissao_cientifica)
      avaliador2 = Organizador.create(usuario: avaliador2)
      
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


      Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador1, coordenador: false)
      Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador2, coordenador: false)
      Membro.create(linha: linha_simposio_cultura, organizador: avaliador1, coordenador: false)
      Membro.create(linha: linha_simposio_cultura, organizador: avaliador2, coordenador: false)
      Membro.create(linha: linha_mostra_ciencias_biologicas, organizador: avaliador1, coordenador: false)
      Membro.create(linha: linha_mostra_ciencias_biologicas, organizador: avaliador2, coordenador: false)
      Membro.create(linha: linha_mostra_ciencias_saude, organizador: avaliador1, coordenador: false)
      Membro.create(linha: linha_mostra_ciencias_saude, organizador: avaliador2, coordenador: false)

      puts "Concluído!"
  end

  desc "Atribuir avaliadores"
  task atribuir_avaliadores: :environment do
    Trabalho.all.each do |trabalho|
        trabalho.definir_avaliadores
    end
  end
end
