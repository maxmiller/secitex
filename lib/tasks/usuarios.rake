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
    marcio = Usuario.create(nome: 'Márcio Adriano de Azevedo', email: 'marcio.azevedo@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    marcio = Organizador.create(usuario: marcio)
    nadir = Usuario.create(nome: 'Nadir Arruda Skeete', email: 'nadir.arruda@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    nadir = Organizador.create(usuario: nadir)
    charles = Usuario.create(nome: 'Charles Bamam Medeiros de Souza', email: 'charles.souza@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    charles = Organizador.create(usuario: charles)
    darlyne = Usuario.create(nome: 'Darlyne Fontes Virginio', email: 'darlyne.fontes@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    darlyne = Organizador.create(usuario: darlyne)
    joao = Usuario.create(nome: 'João Teixeira de Carvalho Neto', email: 'joao.teixeira@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    joao = Organizador.create(usuario: joao)
    paulo = Usuario.create(nome: 'Paulo Pereira da Silva', email: 'paulo.pereira@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    paulo = Organizador.create(usuario: paulo)
    rafael = Usuario.create(nome: 'Rafael Hernandez Damascena dos Passos', email: 'rafael.passos@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    rafael = Organizador.create(usuario: rafael)
    rodrigo_luiz = Usuario.create(nome: 'Rodrigo Luiz Silva Pessoa', email: 'rodrigo.pessoa@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    rodrigo_luiz = Organizador.create(usuario: rodrigo_luiz)
    patricia = Usuario.create(nome: 'Patricia da Silva Souza Martins', email: 'patricia.souza@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    patricia = Organizador.create(usuario: patricia)
    elizomar = Usuario.create(nome: 'Elizomar de Assis Nobre', email: 'elizomar.nobre@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    elizomar = Organizador.create(usuario: elizomar)
    rodrigo_siqueira = Usuario.create(nome: 'Rodrigo Siqueira Martins', email: 'rodrigo.siqueira@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    rodrigo_siqueira = Organizador.create(usuario: rodrigo_siqueira)
    regia = Usuario.create(nome: 'Régia Lúcia Lopes', email: 'regia.lopes@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    regia = Organizador.create(usuario: regia)
    sandra = Usuario.create(nome: 'Sandra Maria da Nóbrega', email: 'sandra.nobrega@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    sandra = Organizador.create(usuario: sandra)
    thiago = Usuario.create(nome: 'Thiago José de Azevedo Loureiro', email: 'thiago.loureiro@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    thiago = Organizador.create(usuario: thiago)
    marcus = Usuario.create(nome: 'Marcus Vinícius Duarte Sampaio', email: 'marcus.sampaio@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    marcus = Organizador.create(usuario: marcus)
    marcelo = Usuario.create(nome: 'Marcelo Henrique Carneiro Camilo', email: 'marcelo.camilo@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    marcelo = Organizador.create(usuario: marcelo)
    jussara = Usuario.create(nome: 'Jussara Benvindo Neri', email: 'jussara.neri@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    jussara = Organizador.create(usuario: jussara)
    fernando = Usuario.create(nome: 'Fernando Antonio da Silva', email: 'fernando.silva@ifrn.edu.br', password: '321mud@r', perfil: coordenador_comissao_cientifica)
    fernando = Organizador.create(usuario: fernando)
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


      

puts "Criando usuário marcia.toledo@ifrn.edu.br"
avaliador1 = Usuario.create(nome: 'Marcia Cristina Barragan Moraes Toledo', email: 'marcia.toledo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador1 = Organizador.create(usuario: avaliador1)
puts "Adicionando avaliador1 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador1, coordenador: false)

puts "Criando usuário geanne.alves.lima@gmail.com"
avaliador2 = Usuario.create(nome: 'Geane Alves de Lima', email: 'geanne.alves.lima@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador2 = Organizador.create(usuario: avaliador2)
puts "Adicionando avaliador2 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador2, coordenador: false)

puts "Criando usuário danilodiass18@gmail.com"
avaliador3 = Usuario.create(nome: 'CLÉCIO DANILO DIAS DA SILVA ', email: 'danilodiass18@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador3 = Organizador.create(usuario: avaliador3)
puts "Adicionando avaliador3 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador3, coordenador: false)
puts "Adicionando avaliador3 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador3, coordenador: false)
puts "Adicionando avaliador3 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador3, coordenador: false)
puts "Adicionando avaliador3 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador3, coordenador: false)
puts "Adicionando avaliador3 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador3, coordenador: false)
puts "Adicionando avaliador3 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador3, coordenador: false)
puts "Adicionando avaliador3 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador3, coordenador: false)
puts "Adicionando avaliador3 a linha linha_congic_recursos_florestais_engenharia_florestal"
Membro.create(linha: linha_congic_recursos_florestais_engenharia_florestal, organizador: avaliador3, coordenador: false)

puts "Criando usuário jordania_gids@yahoo.com.br"
avaliador4 = Usuario.create(nome: 'Jordânia Alyne Santos Marques', email: 'jordania_gids@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador4 = Organizador.create(usuario: avaliador4)
puts "Adicionando avaliador4 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador4, coordenador: false)
puts "Adicionando avaliador4 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador4, coordenador: false)
puts "Adicionando avaliador4 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador4, coordenador: false)
puts "Adicionando avaliador4 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador4, coordenador: false)
puts "Adicionando avaliador4 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador4, coordenador: false)
puts "Adicionando avaliador4 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador4, coordenador: false)
puts "Adicionando avaliador4 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador4, coordenador: false)
puts "Adicionando avaliador4 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador4, coordenador: false)

puts "Criando usuário carlosjrdao@gmail.com"
avaliador5 = Usuario.create(nome: 'CARLOS JORDÃO DE ASSIS SILVA', email: 'carlosjrdao@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador5 = Organizador.create(usuario: avaliador5)
puts "Adicionando avaliador5 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador5, coordenador: false)
puts "Adicionando avaliador5 a linha linha_congic_enfermagem"
Membro.create(linha: linha_congic_enfermagem, organizador: avaliador5, coordenador: false)
puts "Adicionando avaliador5 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador5, coordenador: false)

puts "Criando usuário lucenaadriano@hotmail.com"
avaliador6 = Usuario.create(nome: 'Adrano Lucena de Góis', email: 'lucenaadriano@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador6 = Organizador.create(usuario: avaliador6)
puts "Adicionando avaliador6 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador6, coordenador: false)
puts "Adicionando avaliador6 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador6, coordenador: false)
puts "Adicionando avaliador6 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador6, coordenador: false)

puts "Criando usuário lauradomingos1@hotmail.com"
avaliador7 = Usuario.create(nome: 'Laura Beatriz dos Santos Domingos', email: 'lauradomingos1@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador7 = Organizador.create(usuario: avaliador7)
puts "Adicionando avaliador7 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador7, coordenador: false)
puts "Adicionando avaliador7 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador7, coordenador: false)
puts "Adicionando avaliador7 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador7, coordenador: false)
puts "Adicionando avaliador7 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador7, coordenador: false)

puts "Criando usuário jaianepadilha5@gmail.com"
avaliador8 = Usuario.create(nome: 'Jaiane Padilha Oliveira', email: 'jaianepadilha5@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador8 = Organizador.create(usuario: avaliador8)
puts "Adicionando avaliador8 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador8, coordenador: false)
puts "Adicionando avaliador8 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador8, coordenador: false)
puts "Adicionando avaliador8 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador8, coordenador: false)
puts "Adicionando avaliador8 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador8, coordenador: false)

puts "Criando usuário ofelipeteixeira@gmail.com"
avaliador9 = Usuario.create(nome: 'FELIPE DA SILVA TEIXEIRA', email: 'ofelipeteixeira@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador9 = Organizador.create(usuario: avaliador9)
puts "Adicionando avaliador9 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador9, coordenador: false)

puts "Criando usuário marcos.santiago@ifrn.edu.br"
avaliador10 = Usuario.create(nome: 'Marcos Aurélio de Oliveira Santiago', email: 'marcos.santiago@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador10 = Organizador.create(usuario: avaliador10)
puts "Adicionando avaliador10 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador10, coordenador: false)
puts "Adicionando avaliador10 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador10, coordenador: false)
puts "Adicionando avaliador10 a linha linha_congic_economia"
Membro.create(linha: linha_congic_economia, organizador: avaliador10, coordenador: false)

puts "Criando usuário mafurca2014@gmail.com"
avaliador11 = Usuario.create(nome: 'Marineide Furtado Campos', email: 'mafurca2014@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador11 = Organizador.create(usuario: avaliador11)
puts "Adicionando avaliador11 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador11, coordenador: false)

puts "Criando usuário eli_fisica@hotmail.com"
avaliador12 = Usuario.create(nome: 'Elimar Veloso Conceição', email: 'eli_fisica@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador12 = Organizador.create(usuario: avaliador12)
puts "Adicionando avaliador12 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador12, coordenador: false)
puts "Adicionando avaliador12 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador12, coordenador: false)
puts "Adicionando avaliador12 a linha linha_congic_economia"
Membro.create(linha: linha_congic_economia, organizador: avaliador12, coordenador: false)

puts "Criando usuário vicente.amintas@ifrn.edu.br"
avaliador13 = Usuario.create(nome: 'Vicente Amintas Jorge', email: 'vicente.amintas@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador13 = Organizador.create(usuario: avaliador13)
puts "Adicionando avaliador13 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador13, coordenador: false)
puts "Adicionando avaliador13 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador13, coordenador: false)
puts "Adicionando avaliador13 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador13, coordenador: false)
puts "Adicionando avaliador13 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador13, coordenador: false)
puts "Adicionando avaliador13 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador13, coordenador: false)

puts "Criando usuário cauealmeidagalvao@gmail.com"
avaliador14 = Usuario.create(nome: 'Cauê Almeida Galvão', email: 'cauealmeidagalvao@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador14 = Organizador.create(usuario: avaliador14)
puts "Adicionando avaliador14 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador14, coordenador: false)
puts "Adicionando avaliador14 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador14, coordenador: false)

puts "Criando usuário maria.duarte@ifap.edu.br"
avaliador15 = Usuario.create(nome: 'MARIA DAS DORES DA COSTA VIEIRA DUARTE', email: 'maria.duarte@ifap.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador15 = Organizador.create(usuario: avaliador15)
puts "Adicionando avaliador15 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador15, coordenador: false)
puts "Adicionando avaliador15 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador15, coordenador: false)
puts "Adicionando avaliador15 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador15, coordenador: false)
puts "Adicionando avaliador15 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador15, coordenador: false)
puts "Adicionando avaliador15 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador15, coordenador: false)
puts "Adicionando avaliador15 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador15, coordenador: false)

puts "Criando usuário andregrilo@info.ufrn.br"
avaliador16 = Usuario.create(nome: 'André Grilo', email: 'andregrilo@info.ufrn.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador16 = Organizador.create(usuario: avaliador16)
puts "Adicionando avaliador16 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador16, coordenador: false)
puts "Adicionando avaliador16 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador16, coordenador: false)

puts "Procurando usuário regia.lopes@ifrn.edu.br"
avaliador17 = Usuario.find_by(email: 'regia.lopes@ifrn.edu.br')
avaliador17 = Organizador.find_by(usuario: avaliador17)
puts "Adicionando avaliador17 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador17, coordenador: false)
puts "Adicionando avaliador17 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador17, coordenador: false)
puts "Adicionando avaliador17 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador17, coordenador: false)
puts "Adicionando avaliador17 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador17, coordenador: false)
puts "Adicionando avaliador17 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador17, coordenador: false)


puts "Criando usuário monique.oliveira@ifrn.edu.br"
avaliador19 = Usuario.create(nome: 'Monique Dias de Oliveira', email: 'monique.oliveira@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador19 = Organizador.create(usuario: avaliador19)
puts "Adicionando avaliador19 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador19, coordenador: false)

puts "Criando usuário divina.tavares@ifma.edu.br"
avaliador20 = Usuario.create(nome: 'DIVINA ALVES TAVARES', email: 'divina.tavares@ifma.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador20 = Organizador.create(usuario: avaliador20)
puts "Adicionando avaliador20 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador20, coordenador: false)
puts "Adicionando avaliador20 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador20, coordenador: false)

puts "Criando usuário erineide.silva@ifrn.edu.br"
avaliador21 = Usuario.create(nome: 'ERINEIDE DA COSTA E SILVA', email: 'erineide.silva@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador21 = Organizador.create(usuario: avaliador21)
puts "Adicionando avaliador21 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador21, coordenador: false)
puts "Adicionando avaliador21 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador21, coordenador: false)

puts "Criando usuário anacristinab62@gmail.com"
avaliador22 = Usuario.create(nome: 'ANA CRISTINA BARBOSA DOS SANTOS ANA FERREIRA', email: 'anacristinab62@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador22 = Organizador.create(usuario: avaliador22)
puts "Adicionando avaliador22 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador22, coordenador: false)
puts "Adicionando avaliador22 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador22, coordenador: false)
puts "Adicionando avaliador22 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador22, coordenador: false)

puts "Criando usuário mastroiannioliveira@gmail.com"
avaliador23 = Usuario.create(nome: 'mastroianni rufino de oliveira', email: 'mastroiannioliveira@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador23 = Organizador.create(usuario: avaliador23)
puts "Adicionando avaliador23 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador23, coordenador: false)

puts "Criando usuário ana.catarina@ifrn.edu.br"
avaliador24 = Usuario.create(nome: 'Ana Catarina da Rocha Medeiros', email: 'ana.catarina@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador24 = Organizador.create(usuario: avaliador24)
puts "Adicionando avaliador24 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador24, coordenador: false)
puts "Adicionando avaliador24 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador24, coordenador: false)
puts "Adicionando avaliador24 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador24, coordenador: false)
puts "Adicionando avaliador24 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador24, coordenador: false)
puts "Adicionando avaliador24 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador24, coordenador: false)

puts "Criando usuário marina.palhano@yahoo.com.br"
avaliador25 = Usuario.create(nome: 'Marina Marisa Palhano dos Santos', email: 'marina.palhano@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador25 = Organizador.create(usuario: avaliador25)
puts "Adicionando avaliador25 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador25, coordenador: false)

puts "Criando usuário eduardofrancisco2219@hotmail.com"
avaliador26 = Usuario.create(nome: 'EDUARDO FRANCISCO SOUZA DAS CHAGAS ', email: 'eduardofrancisco2219@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador26 = Organizador.create(usuario: avaliador26)
puts "Adicionando avaliador26 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador26, coordenador: false)
puts "Adicionando avaliador26 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador26, coordenador: false)
puts "Adicionando avaliador26 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador26, coordenador: false)
puts "Adicionando avaliador26 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador26, coordenador: false)

puts "Criando usuário maria.marques@ifb.edu.br"
avaliador27 = Usuario.create(nome: 'MARIA ELZA MORAIS MARQUES', email: 'maria.marques@ifb.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador27 = Organizador.create(usuario: avaliador27)
puts "Adicionando avaliador27 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador27, coordenador: false)
puts "Adicionando avaliador27 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador27, coordenador: false)
puts "Adicionando avaliador27 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador27, coordenador: false)

puts "Criando usuário monteiro.junior@ifrn.edu.br"
avaliador28 = Usuario.create(nome: 'Francisco Monteiro de Sales Júnior', email: 'monteiro.junior@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador28 = Organizador.create(usuario: avaliador28)
puts "Adicionando avaliador28 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador28, coordenador: false)
puts "Adicionando avaliador28 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador28, coordenador: false)
puts "Adicionando avaliador28 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador28, coordenador: false)
puts "Adicionando avaliador28 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador28, coordenador: false)
puts "Adicionando avaliador28 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador28, coordenador: false)

puts "Criando usuário valvernagues.freitas@ifrn.edu.br"
avaliador29 = Usuario.create(nome: 'VALVERNAGUES FREITAS', email: 'valvernagues.freitas@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador29 = Organizador.create(usuario: avaliador29)
puts "Adicionando avaliador29 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador29, coordenador: false)
puts "Adicionando avaliador29 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador29, coordenador: false)
puts "Adicionando avaliador29 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador29, coordenador: false)
puts "Adicionando avaliador29 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador29, coordenador: false)

puts "Criando usuário erivaldunp@hotmail.com"
avaliador30 = Usuario.create(nome: 'ERIVALDO XAVIER DE LIMA', email: 'erivaldunp@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador30 = Organizador.create(usuario: avaliador30)
puts "Adicionando avaliador30 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador30, coordenador: false)

puts "Criando usuário jacqueline.pessanha01@gmail.com"
avaliador31 = Usuario.create(nome: 'Jacqueline Fernandes de Gusmao Neves Pessanha', email: 'jacqueline.pessanha01@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador31 = Organizador.create(usuario: avaliador31)
puts "Adicionando avaliador31 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador31, coordenador: false)
puts "Adicionando avaliador31 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador31, coordenador: false)
puts "Adicionando avaliador31 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador31, coordenador: false)
puts "Adicionando avaliador31 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador31, coordenador: false)
puts "Adicionando avaliador31 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador31, coordenador: false)
puts "Adicionando avaliador31 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador31, coordenador: false)
puts "Adicionando avaliador31 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador31, coordenador: false)
puts "Adicionando avaliador31 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador31, coordenador: false)

puts "Criando usuário rejane.azevedo@ifrn.edu.br"
avaliador32 = Usuario.create(nome: 'Zenileide Rejane de Azevedo', email: 'rejane.azevedo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador32 = Organizador.create(usuario: avaliador32)
puts "Adicionando avaliador32 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador32, coordenador: false)
puts "Adicionando avaliador32 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador32, coordenador: false)

puts "Criando usuário jsamaralima@gmail.com"
avaliador33 = Usuario.create(nome: 'Jeanne Samara dos Santos lima', email: 'jsamaralima@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador33 = Organizador.create(usuario: avaliador33)
puts "Adicionando avaliador33 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador33, coordenador: false)
puts "Adicionando avaliador33 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador33, coordenador: false)
puts "Adicionando avaliador33 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador33, coordenador: false)
puts "Adicionando avaliador33 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador33, coordenador: false)

puts "Criando usuário rubens.capis@gmail.com"
avaliador34 = Usuario.create(nome: 'Rubens Capistrano de Araújo', email: 'rubens.capis@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador34 = Organizador.create(usuario: avaliador34)
puts "Adicionando avaliador34 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador34, coordenador: false)
puts "Adicionando avaliador34 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador34, coordenador: false)
puts "Adicionando avaliador34 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador34, coordenador: false)
puts "Adicionando avaliador34 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador34, coordenador: false)
puts "Adicionando avaliador34 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador34, coordenador: false)
puts "Adicionando avaliador34 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador34, coordenador: false)
puts "Adicionando avaliador34 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador34, coordenador: false)

puts "Criando usuário geraldo.freire@ifrn.edu.br"
avaliador35 = Usuario.create(nome: 'Geraldo Freire de Lima', email: 'geraldo.freire@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador35 = Organizador.create(usuario: avaliador35)
puts "Adicionando avaliador35 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador35, coordenador: false)
puts "Adicionando avaliador35 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador35, coordenador: false)
puts "Adicionando avaliador35 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador35, coordenador: false)
puts "Adicionando avaliador35 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador35, coordenador: false)
puts "Adicionando avaliador35 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador35, coordenador: false)
puts "Adicionando avaliador35 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador35, coordenador: false)
puts "Adicionando avaliador35 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador35, coordenador: false)
puts "Adicionando avaliador35 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador35, coordenador: false)
puts "Adicionando avaliador35 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador35, coordenador: false)

puts "Procurando usuário thiago.loureiro@ifrn.edu.br"
avaliador36 = Usuario.find_by(email: 'thiago.loureiro@ifrn.edu.br')
avaliador36 = Organizador.find_by(usuario: avaliador36)

puts "Criando usuário alexandre.avincola@ifpr.edu.br"
avaliador37 = Usuario.create(nome: 'Alexandre da Silva Avincola', email: 'alexandre.avincola@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador37 = Organizador.create(usuario: avaliador37)
puts "Adicionando avaliador37 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador37, coordenador: false)

puts "Criando usuário anauzira.kurita@ifpr.edu.br"
avaliador38 = Usuario.create(nome: 'Anauzira Silveira de Rezende Kurita', email: 'anauzira.kurita@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador38 = Organizador.create(usuario: avaliador38)
puts "Adicionando avaliador38 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador38, coordenador: false)

puts "Criando usuário angela.maques@ifpr.edu.br"
avaliador39 = Usuario.create(nome: 'Angela Fontana Marques', email: 'angela.maques@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador39 = Organizador.create(usuario: avaliador39)
puts "Adicionando avaliador39 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador39, coordenador: false)

puts "Criando usuário AUGUSTO.FLORES@IFPR.EDU.BR"
avaliador40 = Usuario.create(nome: 'AUGUSTO FABER FLROES', email: 'AUGUSTO.FLORES@IFPR.EDU.BR', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador40 = Organizador.create(usuario: avaliador40)
puts "Adicionando avaliador40 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador40, coordenador: false)
puts "Adicionando avaliador40 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador40, coordenador: false)
puts "Adicionando avaliador40 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador40, coordenador: false)

puts "Criando usuário dandaraqueiroga@gmail.com"
avaliador41 = Usuario.create(nome: 'Dandara Queiroga de Oliveira Sousa', email: 'dandaraqueiroga@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador41 = Organizador.create(usuario: avaliador41)
puts "Adicionando avaliador41 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador41, coordenador: false)
puts "Adicionando avaliador41 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador41, coordenador: false)
puts "Adicionando avaliador41 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador41, coordenador: false)

puts "Criando usuário dennison.rodrigues@ifpr.edu.br"
avaliador42 = Usuario.create(nome: 'Dennison Benetti Rodrigues', email: 'dennison.rodrigues@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador42 = Organizador.create(usuario: avaliador42)
puts "Adicionando avaliador42 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador42, coordenador: false)
puts "Adicionando avaliador42 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador42, coordenador: false)

puts "Criando usuário derdried.johann@ifpr.edu.br"
avaliador43 = Usuario.create(nome: 'Derdried Athanasio Johann', email: 'derdried.johann@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador43 = Organizador.create(usuario: avaliador43)
puts "Adicionando avaliador43 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador43, coordenador: false)

puts "Criando usuário diego.panonceli@ifpr.edu.br"
avaliador44 = Usuario.create(nome: 'Diego Manoel Panonceli', email: 'diego.panonceli@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador44 = Organizador.create(usuario: avaliador44)
puts "Adicionando avaliador44 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador44, coordenador: false)

puts "Criando usuário ecnedith@gmail.com"
avaliador45 = Usuario.create(nome: 'Edith Cristina da Nóbrega', email: 'ecnedith@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador45 = Organizador.create(usuario: avaliador45)
puts "Adicionando avaliador45 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador45, coordenador: false)

puts "Criando usuário edmundo.pozes@ifsc.edu.br"
avaliador46 = Usuario.create(nome: 'Edmundo Pozes da Silva', email: 'edmundo.pozes@ifsc.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador46 = Organizador.create(usuario: avaliador46)
puts "Adicionando avaliador46 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador46, coordenador: false)
puts "Adicionando avaliador46 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador46, coordenador: false)
puts "Adicionando avaliador46 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador46, coordenador: false)

puts "Criando usuário emerson.ferreira@ifpr.edu.br"
avaliador47 = Usuario.create(nome: 'Emerson Ferreira da Silva ', email: 'emerson.ferreira@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador47 = Organizador.create(usuario: avaliador47)
puts "Adicionando avaliador47 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador47, coordenador: false)
puts "Adicionando avaliador47 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador47, coordenador: false)
puts "Adicionando avaliador47 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador47, coordenador: false)

puts "Criando usuário evertondsb36@gmail.com"
avaliador48 = Usuario.create(nome: 'Everton da Silva Brito', email: 'evertondsb36@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador48 = Organizador.create(usuario: avaliador48)
puts "Adicionando avaliador48 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador48, coordenador: false)
puts "Adicionando avaliador48 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador48, coordenador: false)
puts "Adicionando avaliador48 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador48, coordenador: false)
puts "Adicionando avaliador48 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador48, coordenador: false)
puts "Adicionando avaliador48 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador48, coordenador: false)

puts "Criando usuário felipe.borges@ifpr.edu.br"
avaliador49 = Usuario.create(nome: 'Felipe Augusto Fernandes Borges', email: 'felipe.borges@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador49 = Organizador.create(usuario: avaliador49)
puts "Adicionando avaliador49 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador49, coordenador: false)
puts "Adicionando avaliador49 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador49, coordenador: false)
puts "Adicionando avaliador49 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador49, coordenador: false)
puts "Adicionando avaliador49 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador49, coordenador: false)

puts "Criando usuário felipejfc@gmail.com"
avaliador50 = Usuario.create(nome: 'Felipe Jhonanta Ferreira da Costa', email: 'felipejfc@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador50 = Organizador.create(usuario: avaliador50)
puts "Adicionando avaliador50 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador50, coordenador: false)

puts "Criando usuário FLAVIUSVALADARES@IFSP.EDU.BR"
avaliador51 = Usuario.create(nome: 'FLAVIO BIASUTTI VALADARES', email: 'FLAVIUSVALADARES@IFSP.EDU.BR', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador51 = Organizador.create(usuario: avaliador51)
puts "Adicionando avaliador51 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador51, coordenador: false)
puts "Adicionando avaliador51 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador51, coordenador: false)
puts "Adicionando avaliador51 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador51, coordenador: false)

puts "Criando usuário gilvanedja@gmail.com"
avaliador52 = Usuario.create(nome: 'Gilvanedja Ferreira Mendes da Silva', email: 'gilvanedja@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador52 = Organizador.create(usuario: avaliador52)
puts "Adicionando avaliador52 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador52, coordenador: false)
puts "Adicionando avaliador52 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador52, coordenador: false)
puts "Adicionando avaliador52 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador52, coordenador: false)
puts "Adicionando avaliador52 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador52, coordenador: false)

puts "Criando usuário acessiarq@gmail.com"
avaliador53 = Usuario.create(nome: 'Isabela Fernandes Andrade', email: 'acessiarq@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador53 = Organizador.create(usuario: avaliador53)
puts "Adicionando avaliador53 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador53, coordenador: false)

puts "Criando usuário john.faber@ifsp.edu.br"
avaliador54 = Usuario.create(nome: 'John Faber Archila Diaz', email: 'john.faber@ifsp.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador54 = Organizador.create(usuario: avaliador54)
puts "Adicionando avaliador54 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador54, coordenador: false)

puts "Criando usuário quirinojm@hotmail.com"
avaliador55 = Usuario.create(nome: 'Jonatas Motta Quirino', email: 'quirinojm@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador55 = Organizador.create(usuario: avaliador55)
puts "Adicionando avaliador55 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador55, coordenador: false)

puts "Criando usuário profkat.rlc@gmail.com"
avaliador56 = Usuario.create(nome: 'KÁTIA REGINA LOPES COSTA FREIRE', email: 'profkat.rlc@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador56 = Organizador.create(usuario: avaliador56)
puts "Adicionando avaliador56 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador56, coordenador: false)

puts "Criando usuário kessia.marchi@ifpr.edu.br"
avaliador57 = Usuario.create(nome: 'Késsia Rita da Costa Marchi', email: 'kessia.marchi@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador57 = Organizador.create(usuario: avaliador57)
puts "Adicionando avaliador57 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador57, coordenador: false)
puts "Adicionando avaliador57 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador57, coordenador: false)

puts "Criando usuário larisse.carvalho@garanhuns.ifpe.edu.br"
avaliador58 = Usuario.create(nome: 'Larisse Santos Cabral de Oliveira Carvalho', email: 'larisse.carvalho@garanhuns.ifpe.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador58 = Organizador.create(usuario: avaliador58)
puts "Adicionando avaliador58 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador58, coordenador: false)
puts "Adicionando avaliador58 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador58, coordenador: false)
puts "Adicionando avaliador58 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador58, coordenador: false)
puts "Adicionando avaliador58 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador58, coordenador: false)
puts "Adicionando avaliador58 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador58, coordenador: false)

puts "Criando usuário leandro.delgado@ifpr.edu.br"
avaliador59 = Usuario.create(nome: 'Leandro Delgado de Souza', email: 'leandro.delgado@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador59 = Organizador.create(usuario: avaliador59)
puts "Adicionando avaliador59 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador59, coordenador: false)

puts "Criando usuário luciana.teixeira@usu.edu.br"
avaliador60 = Usuario.create(nome: 'Luciana Teixeira', email: 'luciana.teixeira@usu.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador60 = Organizador.create(usuario: avaliador60)
puts "Adicionando avaliador60 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador60, coordenador: false)
puts "Adicionando avaliador60 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador60, coordenador: false)

puts "Criando usuário maicon.souza@ifpr.edu.br"
avaliador61 = Usuario.create(nome: 'Maicon Rogério de Souza', email: 'maicon.souza@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador61 = Organizador.create(usuario: avaliador61)
puts "Adicionando avaliador61 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador61, coordenador: false)

puts "Criando usuário engmarcelocefet@terra.com.br"
avaliador62 = Usuario.create(nome: 'MARCELO DE JESUS RODRIGUES DA NOBREGA', email: 'engmarcelocefet@terra.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador62 = Organizador.create(usuario: avaliador62)
puts "Adicionando avaliador62 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador62, coordenador: false)
puts "Adicionando avaliador62 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador62, coordenador: false)
puts "Adicionando avaliador62 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador62, coordenador: false)
puts "Adicionando avaliador62 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador62, coordenador: false)

puts "Criando usuário marcelo.borth@ifpr.edu.br"
avaliador63 = Usuario.create(nome: 'Marcelo Rafael Borth', email: 'marcelo.borth@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador63 = Organizador.create(usuario: avaliador63)
puts "Adicionando avaliador63 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador63, coordenador: false)

puts "Criando usuário marcelo.s.nogueira@gmail.com"
avaliador64 = Usuario.create(nome: 'Marcelo Sousa Nogueira', email: 'marcelo.s.nogueira@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador64 = Organizador.create(usuario: avaliador64)
puts "Adicionando avaliador64 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador64, coordenador: false)
puts "Adicionando avaliador64 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador64, coordenador: false)
puts "Adicionando avaliador64 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador64, coordenador: false)

puts "Criando usuário marcio.carvalho@ifms.edu.br"
avaliador65 = Usuario.create(nome: 'Márcio Palácios de Carvalho', email: 'marcio.carvalho@ifms.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador65 = Organizador.create(usuario: avaliador65)
puts "Adicionando avaliador65 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador65, coordenador: false)
puts "Adicionando avaliador65 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador65, coordenador: false)

puts "Criando usuário marisgabardo@gmail.com"
avaliador66 = Usuario.create(nome: 'Maristella Gabardo', email: 'marisgabardo@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador66 = Organizador.create(usuario: avaliador66)
puts "Adicionando avaliador66 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador66, coordenador: false)
puts "Adicionando avaliador66 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador66, coordenador: false)

puts "Criando usuário michele.vieira@ifpr.edu.br"
avaliador67 = Usuario.create(nome: 'Michele Patrícia Müller Mansur Vieira ', email: 'michele.vieira@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador67 = Organizador.create(usuario: avaliador67)
puts "Adicionando avaliador67 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador67, coordenador: false)
puts "Adicionando avaliador67 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador67, coordenador: false)

puts "Criando usuário michelsch.joao@ifsc.edu.br"
avaliador68 = Usuario.create(nome: 'MICHELSCH JOÃO DA SILVA', email: 'michelsch.joao@ifsc.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador68 = Organizador.create(usuario: avaliador68)
puts "Adicionando avaliador68 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador68, coordenador: false)
puts "Adicionando avaliador68 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador68, coordenador: false)

puts "Criando usuário lima.patriciasouza@gmail.com"
avaliador69 = Usuario.create(nome: 'Patrícia Ferreira de Souza Lima', email: 'lima.patriciasouza@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador69 = Organizador.create(usuario: avaliador69)
puts "Adicionando avaliador69 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador69, coordenador: false)
puts "Adicionando avaliador69 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador69, coordenador: false)
puts "Adicionando avaliador69 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador69, coordenador: false)

puts "Criando usuário priled@gmail.com"
avaliador70 = Usuario.create(nome: 'PRISCILA DA DA SILVA DUARTE', email: 'priled@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador70 = Organizador.create(usuario: avaliador70)
puts "Adicionando avaliador70 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador70, coordenador: false)
puts "Adicionando avaliador70 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador70, coordenador: false)
puts "Adicionando avaliador70 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador70, coordenador: false)

puts "Criando usuário rafael.silva@ifpr.edu.br"
avaliador71 = Usuario.create(nome: 'RAFAEL EGIDIO LEAL E SILVA', email: 'rafael.silva@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador71 = Organizador.create(usuario: avaliador71)
puts "Adicionando avaliador71 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador71, coordenador: false)
puts "Adicionando avaliador71 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador71, coordenador: false)
puts "Adicionando avaliador71 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador71, coordenador: false)
puts "Adicionando avaliador71 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador71, coordenador: false)
puts "Adicionando avaliador71 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador71, coordenador: false)
puts "Adicionando avaliador71 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador71, coordenador: false)

puts "Criando usuário rtannure@ifes.edu.br"
avaliador72 = Usuario.create(nome: 'Renato Tannure Rotta de Almeida', email: 'rtannure@ifes.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador72 = Organizador.create(usuario: avaliador72)
puts "Adicionando avaliador72 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador72, coordenador: false)

puts "Criando usuário ricardo.rosa@ifpr.edu.br"
avaliador73 = Usuario.create(nome: 'Ricardo da Rosa', email: 'ricardo.rosa@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador73 = Organizador.create(usuario: avaliador73)
puts "Adicionando avaliador73 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador73, coordenador: false)

puts "Criando usuário rcbortoletto@gmail.com"
avaliador74 = Usuario.create(nome: 'Rodrigo Campos Bortoletto', email: 'rcbortoletto@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador74 = Organizador.create(usuario: avaliador74)
puts "Adicionando avaliador74 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador74, coordenador: false)
puts "Adicionando avaliador74 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador74, coordenador: false)
puts "Adicionando avaliador74 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador74, coordenador: false)

puts "Criando usuário rosa.barbosa@ifpr.edu.br"
avaliador75 = Usuario.create(nome: 'Rosa Amélia Barbosa', email: 'rosa.barbosa@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador75 = Organizador.create(usuario: avaliador75)
puts "Adicionando avaliador75 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador75, coordenador: false)
puts "Adicionando avaliador75 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador75, coordenador: false)

puts "Criando usuário simone.karine@hotmail.com"
avaliador76 = Usuario.create(nome: 'Simone Karine da Costa Mesquita', email: 'simone.karine@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador76 = Organizador.create(usuario: avaliador76)
puts "Adicionando avaliador76 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador76, coordenador: false)
puts "Adicionando avaliador76 a linha linha_congic_enfermagem"
Membro.create(linha: linha_congic_enfermagem, organizador: avaliador76, coordenador: false)
puts "Adicionando avaliador76 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador76, coordenador: false)

puts "Criando usuário Suellen.jensen@ifpr.edu.br"
avaliador77 = Usuario.create(nome: 'Suellen Jensen Klososki ', email: 'Suellen.jensen@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador77 = Organizador.create(usuario: avaliador77)
puts "Adicionando avaliador77 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador77, coordenador: false)

puts "Criando usuário tatiana.pimentel@ifpr.edu.br"
avaliador78 = Usuario.create(nome: 'Tatiana Colombo Pimentel', email: 'tatiana.pimentel@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador78 = Organizador.create(usuario: avaliador78)
puts "Adicionando avaliador78 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador78, coordenador: false)
puts "Adicionando avaliador78 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador78, coordenador: false)

puts "Criando usuário thiagoesteves@yahoo.com.br"
avaliador79 = Usuario.create(nome: 'Thiago de Jesus Esteves', email: 'thiagoesteves@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador79 = Organizador.create(usuario: avaliador79)
puts "Adicionando avaliador79 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador79, coordenador: false)
puts "Adicionando avaliador79 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador79, coordenador: false)
puts "Adicionando avaliador79 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador79, coordenador: false)

puts "Criando usuário profvandervilson@hotmail.com"
avaliador80 = Usuario.create(nome: 'Vandervilson Alves Carneiro ', email: 'profvandervilson@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador80 = Organizador.create(usuario: avaliador80)
puts "Adicionando avaliador80 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador80, coordenador: false)

puts "Criando usuário annapaullinna.silva@ifrn.edu.br"
avaliador81 = Usuario.create(nome: 'Annapaullinna da Silva Costa Lima', email: 'annapaullinna.silva@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador81 = Organizador.create(usuario: avaliador81)
puts "Adicionando avaliador81 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador81, coordenador: false)

puts "Criando usuário renato.alencar@ifrn.edu.br"
avaliador82 = Usuario.create(nome: 'Renato Dantas Alencar', email: 'renato.alencar@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador82 = Organizador.create(usuario: avaliador82)
puts "Adicionando avaliador82 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador82, coordenador: false)
puts "Adicionando avaliador82 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador82, coordenador: false)
puts "Adicionando avaliador82 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador82, coordenador: false)

puts "Criando usuário laylamendes@gmail.com"
avaliador83 = Usuario.create(nome: 'Layla de Brito Mendes', email: 'laylamendes@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador83 = Organizador.create(usuario: avaliador83)
puts "Adicionando avaliador83 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador83, coordenador: false)
puts "Adicionando avaliador83 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador83, coordenador: false)
puts "Adicionando avaliador83 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador83, coordenador: false)
puts "Adicionando avaliador83 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador83, coordenador: false)
puts "Adicionando avaliador83 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador83, coordenador: false)

puts "Criando usuário valeska.dominguez@ifrn.edu.br"
avaliador84 = Usuario.create(nome: 'Maria Valeska Rocha da Silva', email: 'valeska.dominguez@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador84 = Organizador.create(usuario: avaliador84)
puts "Adicionando avaliador84 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador84, coordenador: false)
puts "Adicionando avaliador84 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador84, coordenador: false)
puts "Adicionando avaliador84 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador84, coordenador: false)

puts "Criando usuário rafaelaleite@gmail.com"
avaliador85 = Usuario.create(nome: 'Rafaela Bernardazzi Torrens Leite', email: 'rafaelaleite@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador85 = Organizador.create(usuario: avaliador85)
puts "Adicionando avaliador85 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador85, coordenador: false)
puts "Adicionando avaliador85 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador85, coordenador: false)

puts "Criando usuário neyvanrodrigues@gmail.com"
avaliador86 = Usuario.create(nome: 'Neyvan Renato Rodrigues da Silva', email: 'neyvanrodrigues@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador86 = Organizador.create(usuario: avaliador86)
puts "Adicionando avaliador86 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador86, coordenador: false)
puts "Adicionando avaliador86 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador86, coordenador: false)
puts "Adicionando avaliador86 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador86, coordenador: false)

puts "Criando usuário alberto.gomes@ifrn.edu.br"
avaliador87 = Usuario.create(nome: 'Alberto Correia Gomes Filho', email: 'alberto.gomes@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador87 = Organizador.create(usuario: avaliador87)
puts "Adicionando avaliador87 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador87, coordenador: false)

puts "Criando usuário carlos.albuquerque@ifrn.edu.br"
avaliador88 = Usuario.create(nome: 'Carlos Alberto de Albuquerque Silva', email: 'carlos.albuquerque@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador88 = Organizador.create(usuario: avaliador88)
puts "Adicionando avaliador88 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador88, coordenador: false)
puts "Adicionando avaliador88 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador88, coordenador: false)
puts "Adicionando avaliador88 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador88, coordenador: false)
puts "Adicionando avaliador88 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador88, coordenador: false)

puts "Criando usuário jaqueline.melo@ifrn.edu.br"
avaliador89 = Usuario.create(nome: 'Jaqueline Ferreira de Melo', email: 'jaqueline.melo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador89 = Organizador.create(usuario: avaliador89)
puts "Adicionando avaliador89 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador89, coordenador: false)
puts "Adicionando avaliador89 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador89, coordenador: false)


puts "Criando usuário cristiane.cruz@ifrn.edu.br"
avaliador91 = Usuario.create(nome: 'Cristiane de Brito Cruz', email: 'cristiane.cruz@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador91 = Organizador.create(usuario: avaliador91)
puts "Adicionando avaliador91 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador91, coordenador: false)
puts "Adicionando avaliador91 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador91, coordenador: false)
puts "Adicionando avaliador91 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador91, coordenador: false)
puts "Adicionando avaliador91 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador91, coordenador: false)
puts "Adicionando avaliador91 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador91, coordenador: false)
puts "Adicionando avaliador91 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador91, coordenador: false)

puts "Criando usuário fabiorolimcg@yahoo.com.br"
avaliador92 = Usuario.create(nome: 'FABIO ROLIM PEIXOTO', email: 'fabiorolimcg@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador92 = Organizador.create(usuario: avaliador92)
puts "Adicionando avaliador92 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador92, coordenador: false)

puts "Criando usuário juanfflorencio@outlook.com"
avaliador93 = Usuario.create(nome: 'Juan Dos Santos Silva', email: 'juanfflorencio@outlook.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador93 = Organizador.create(usuario: avaliador93)
puts "Adicionando avaliador93 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador93, coordenador: false)
puts "Adicionando avaliador93 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador93, coordenador: false)
puts "Adicionando avaliador93 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador93, coordenador: false)

puts "Criando usuário SALMONVITORINO@GMAIL.COM"
avaliador94 = Usuario.create(nome: 'SALMON CARLOS VITORINO', email: 'SALMONVITORINO@GMAIL.COM', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador94 = Organizador.create(usuario: avaliador94)
puts "Adicionando avaliador94 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador94, coordenador: false)
puts "Adicionando avaliador94 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador94, coordenador: false)
puts "Adicionando avaliador94 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador94, coordenador: false)
puts "Adicionando avaliador94 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador94, coordenador: false)
puts "Adicionando avaliador94 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador94, coordenador: false)


puts "Criando usuário sonia.araujo@ifrn.edu.br"
avaliador96 = Usuario.create(nome: 'SONIA MARIA DE ARAUJO', email: 'sonia.araujo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador96 = Organizador.create(usuario: avaliador96)
puts "Adicionando avaliador96 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador96, coordenador: false)
puts "Adicionando avaliador96 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador96, coordenador: false)
puts "Adicionando avaliador96 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador96, coordenador: false)
puts "Adicionando avaliador96 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador96, coordenador: false)

puts "Criando usuário naluliba@gmail.com"
avaliador97 = Usuario.create(nome: 'Narla Sathler Musse de Oliveira', email: 'naluliba@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador97 = Organizador.create(usuario: avaliador97)
puts "Adicionando avaliador97 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador97, coordenador: false)
puts "Adicionando avaliador97 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador97, coordenador: false)

puts "Criando usuário ceresvdantas@gmail.com"
avaliador98 = Usuario.create(nome: 'Ceres Virginia da Costa Dantas', email: 'ceresvdantas@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador98 = Organizador.create(usuario: avaliador98)
puts "Adicionando avaliador98 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador98, coordenador: false)

puts "Criando usuário jairorodriguessouza@gmail.com"
avaliador99 = Usuario.create(nome: 'Jairo Rodrigues de Souza', email: 'jairorodriguessouza@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador99 = Organizador.create(usuario: avaliador99)
puts "Adicionando avaliador99 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador99, coordenador: false)
puts "Adicionando avaliador99 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador99, coordenador: false)
puts "Adicionando avaliador99 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador99, coordenador: false)

puts "Criando usuário alexandro.rocha@ifrn.edu.br"
avaliador100 = Usuario.create(nome: 'Alexandro Vladno da Rocha', email: 'alexandro.rocha@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador100 = Organizador.create(usuario: avaliador100)
puts "Adicionando avaliador100 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador100, coordenador: false)
puts "Adicionando avaliador100 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador100, coordenador: false)
puts "Adicionando avaliador100 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador100, coordenador: false)

puts "Criando usuário mauro.meyer17@gmail.com"
avaliador101 = Usuario.create(nome: 'Mauro Froes Meyer', email: 'mauro.meyer17@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador101 = Organizador.create(usuario: avaliador101)
puts "Adicionando avaliador101 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador101, coordenador: false)
puts "Adicionando avaliador101 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador101, coordenador: false)
puts "Adicionando avaliador101 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador101, coordenador: false)
puts "Adicionando avaliador101 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador101, coordenador: false)

puts "Criando usuário adalberto.souza@ifrr.edu.br"
avaliador102 = Usuario.create(nome: 'ADALBERTO VAZ DE SOUZA', email: 'adalberto.souza@ifrr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador102 = Organizador.create(usuario: avaliador102)
puts "Adicionando avaliador102 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador102, coordenador: false)
puts "Adicionando avaliador102 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador102, coordenador: false)
puts "Adicionando avaliador102 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador102, coordenador: false)

puts "Criando usuário macchipaloma@hotmail.com"
avaliador103 = Usuario.create(nome: 'Paloma de Matos Macchi', email: 'macchipaloma@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador103 = Organizador.create(usuario: avaliador103)
puts "Adicionando avaliador103 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador103, coordenador: false)
puts "Adicionando avaliador103 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador103, coordenador: false)

puts "Criando usuário tereza.cizenando@ifrn.edu.br"
avaliador104 = Usuario.create(nome: 'Tereza Amelia Lopes Cizenando Guedes Rocha', email: 'tereza.cizenando@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador104 = Organizador.create(usuario: avaliador104)
puts "Adicionando avaliador104 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador104, coordenador: false)
puts "Adicionando avaliador104 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador104, coordenador: false)
puts "Adicionando avaliador104 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador104, coordenador: false)
puts "Adicionando avaliador104 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador104, coordenador: false)
puts "Adicionando avaliador104 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador104, coordenador: false)
puts "Adicionando avaliador104 a linha linha_congic_engenharia_agricola"
Membro.create(linha: linha_congic_engenharia_agricola, organizador: avaliador104, coordenador: false)

puts "Criando usuário fabiana.rodrigues@ifrn.edu.br"
avaliador105 = Usuario.create(nome: 'FABIANA RODRIGUES DA SILVA', email: 'fabiana.rodrigues@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador105 = Organizador.create(usuario: avaliador105)
puts "Adicionando avaliador105 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador105, coordenador: false)
puts "Adicionando avaliador105 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador105, coordenador: false)
puts "Adicionando avaliador105 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador105, coordenador: false)

puts "Criando usuário francinaidesilva@gmail.com"
avaliador106 = Usuario.create(nome: 'FRANCINAIDE DE LIMA SILVA NASCIMENTO', email: 'francinaidesilva@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador106 = Organizador.create(usuario: avaliador106)
puts "Adicionando avaliador106 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador106, coordenador: false)

puts "Criando usuário emiliana.fernandes@ifrn.edu.br"
avaliador107 = Usuario.create(nome: 'Emiliana Souza Soares', email: 'emiliana.fernandes@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador107 = Organizador.create(usuario: avaliador107)
puts "Adicionando avaliador107 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador107, coordenador: false)
puts "Adicionando avaliador107 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador107, coordenador: false)
puts "Adicionando avaliador107 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador107, coordenador: false)
puts "Adicionando avaliador107 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador107, coordenador: false)

puts "Criando usuário loreta.melo@ifrn.edu.br"
avaliador108 = Usuario.create(nome: 'LORETA MELO BEZERRA CAVALCANTI', email: 'loreta.melo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador108 = Organizador.create(usuario: avaliador108)
puts "Adicionando avaliador108 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador108, coordenador: false)
puts "Adicionando avaliador108 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador108, coordenador: false)
puts "Adicionando avaliador108 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador108, coordenador: false)
puts "Adicionando avaliador108 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador108, coordenador: false)
puts "Adicionando avaliador108 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador108, coordenador: false)
puts "Adicionando avaliador108 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador108, coordenador: false)

puts "Criando usuário gilmara02@yahoo.com.br"
avaliador109 = Usuario.create(nome: 'GILMARA FREIRE AZEVEDO', email: 'gilmara02@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador109 = Organizador.create(usuario: avaliador109)
puts "Adicionando avaliador109 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador109, coordenador: false)

puts "Criando usuário renan.ramalho@ifrn.edu.br"
avaliador110 = Usuario.create(nome: 'RENAN VINICIUS ALVES RAMALHO', email: 'renan.ramalho@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador110 = Organizador.create(usuario: avaliador110)
puts "Adicionando avaliador110 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador110, coordenador: false)
puts "Adicionando avaliador110 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador110, coordenador: false)
puts "Adicionando avaliador110 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador110, coordenador: false)

puts "Criando usuário sintiahelpes@yahoo.com.br"
avaliador111 = Usuario.create(nome: 'Sintia Soares Helpes', email: 'sintiahelpes@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador111 = Organizador.create(usuario: avaliador111)
puts "Adicionando avaliador111 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador111, coordenador: false)
puts "Adicionando avaliador111 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador111, coordenador: false)
puts "Adicionando avaliador111 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador111, coordenador: false)
puts "Adicionando avaliador111 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador111, coordenador: false)

puts "Criando usuário olivesamara@gmail.com"
avaliador112 = Usuario.create(nome: 'Samara Freitas Oliveira', email: 'olivesamara@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador112 = Organizador.create(usuario: avaliador112)
puts "Adicionando avaliador112 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador112, coordenador: false)
puts "Adicionando avaliador112 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador112, coordenador: false)

puts "Criando usuário FERNANDO.MELO@IFRN.EDU.BR"
avaliador113 = Usuario.create(nome: 'FERNANDO ANTONIO DE MELO PEREIRA', email: 'FERNANDO.MELO@IFRN.EDU.BR', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador113 = Organizador.create(usuario: avaliador113)
puts "Adicionando avaliador113 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador113, coordenador: false)
puts "Adicionando avaliador113 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador113, coordenador: false)
puts "Adicionando avaliador113 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador113, coordenador: false)
puts "Adicionando avaliador113 a linha linha_congic_economia"
Membro.create(linha: linha_congic_economia, organizador: avaliador113, coordenador: false)

puts "Criando usuário schwarcz.kaiser@gmail.com"
avaliador114 = Usuario.create(nome: 'Kaiser Dias Schwarcz', email: 'schwarcz.kaiser@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador114 = Organizador.create(usuario: avaliador114)
puts "Adicionando avaliador114 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador114, coordenador: false)
puts "Adicionando avaliador114 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador114, coordenador: false)

puts "Criando usuário angelo.soares@ifrn.edu.br"
avaliador115 = Usuario.create(nome: 'Angelo Araujo Soares', email: 'angelo.soares@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador115 = Organizador.create(usuario: avaliador115)
puts "Adicionando avaliador115 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador115, coordenador: false)
puts "Adicionando avaliador115 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador115, coordenador: false)
puts "Adicionando avaliador115 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador115, coordenador: false)

puts "Criando usuário paulo.lopes@ifrn.edu.br"
avaliador116 = Usuario.create(nome: 'PAULO HENRIQUE MOURA LOPES', email: 'paulo.lopes@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador116 = Organizador.create(usuario: avaliador116)
puts "Adicionando avaliador116 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador116, coordenador: false)
puts "Adicionando avaliador116 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador116, coordenador: false)

puts "Criando usuário antonio.sermilher@ifrn.edu.br"
avaliador117 = Usuario.create(nome: 'ANTONIO RANK SERMILHER DE SALES BARBOSA', email: 'antonio.sermilher@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador117 = Organizador.create(usuario: avaliador117)
puts "Adicionando avaliador117 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador117, coordenador: false)
puts "Adicionando avaliador117 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador117, coordenador: false)
puts "Adicionando avaliador117 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador117, coordenador: false)
puts "Adicionando avaliador117 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador117, coordenador: false)
puts "Adicionando avaliador117 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador117, coordenador: false)
puts "Adicionando avaliador117 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador117, coordenador: false)
puts "Adicionando avaliador117 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador117, coordenador: false)

puts "Criando usuário euza.raquel@escolar.ifrn.edu.br"
avaliador118 = Usuario.create(nome: 'Euza Raquel de Sousa', email: 'euza.raquel@escolar.ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador118 = Organizador.create(usuario: avaliador118)
puts "Adicionando avaliador118 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador118, coordenador: false)
puts "Adicionando avaliador118 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador118, coordenador: false)
puts "Adicionando avaliador118 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador118, coordenador: false)
puts "Adicionando avaliador118 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador118, coordenador: false)

puts "Criando usuário oliveira.leonor@ifrn.edu.br"
avaliador119 = Usuario.create(nome: 'Leonor de Araujo Bezerra Oliveira', email: 'oliveira.leonor@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador119 = Organizador.create(usuario: avaliador119)
puts "Adicionando avaliador119 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador119, coordenador: false)
puts "Adicionando avaliador119 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador119, coordenador: false)
puts "Adicionando avaliador119 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador119, coordenador: false)

puts "Criando usuário RAFAELA.BEZERRA@IFRN.EDU.BR"
avaliador120 = Usuario.create(nome: 'RAFAELA DA SILVA BEZERRA', email: 'RAFAELA.BEZERRA@IFRN.EDU.BR', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador120 = Organizador.create(usuario: avaliador120)
puts "Adicionando avaliador120 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador120, coordenador: false)
puts "Adicionando avaliador120 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador120, coordenador: false)

puts "Criando usuário alice.lima@ifrn.edu.br"
avaliador121 = Usuario.create(nome: 'Ana Alice Lima dos Santos', email: 'alice.lima@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador121 = Organizador.create(usuario: avaliador121)
puts "Adicionando avaliador121 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador121, coordenador: false)

puts "Criando usuário magnus.xavier@ifrn.edu.br"
avaliador122 = Usuario.create(nome: 'ANTONIO MAGNUS DANTAS XAVIER', email: 'magnus.xavier@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador122 = Organizador.create(usuario: avaliador122)
puts "Adicionando avaliador122 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador122, coordenador: false)
puts "Adicionando avaliador122 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador122, coordenador: false)
puts "Adicionando avaliador122 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador122, coordenador: false)
puts "Adicionando avaliador122 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador122, coordenador: false)
puts "Adicionando avaliador122 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador122, coordenador: false)
puts "Adicionando avaliador122 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador122, coordenador: false)
puts "Adicionando avaliador122 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador122, coordenador: false)
puts "Adicionando avaliador122 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador122, coordenador: false)

puts "Criando usuário carlos.deyvinson@hotmail.com"
avaliador123 = Usuario.create(nome: 'Carlos Deyvinson Reges Bessa', email: 'carlos.deyvinson@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador123 = Organizador.create(usuario: avaliador123)
puts "Adicionando avaliador123 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador123, coordenador: false)
puts "Adicionando avaliador123 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador123, coordenador: false)
puts "Adicionando avaliador123 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador123, coordenador: false)

puts "Criando usuário carlos.duarte@ifrn.edu.br"
avaliador124 = Usuario.create(nome: 'Carlos Eduardo de Lima Duarte', email: 'carlos.duarte@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador124 = Organizador.create(usuario: avaliador124)
puts "Adicionando avaliador124 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador124, coordenador: false)

puts "Criando usuário filipe.quintaes@ifrn.edu.br"
avaliador125 = Usuario.create(nome: 'Filipe de Oliveira Quintaes', email: 'filipe.quintaes@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador125 = Organizador.create(usuario: avaliador125)
puts "Adicionando avaliador125 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador125, coordenador: false)
puts "Adicionando avaliador125 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador125, coordenador: false)
puts "Adicionando avaliador125 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador125, coordenador: false)

puts "Criando usuário bruno.amarant@ifrn.edu.br"
avaliador126 = Usuario.create(nome: 'BRUNO MARTINS VALE DE LUCENA AMARANT', email: 'bruno.amarant@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador126 = Organizador.create(usuario: avaliador126)
puts "Adicionando avaliador126 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador126, coordenador: false)
puts "Adicionando avaliador126 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador126, coordenador: false)
puts "Adicionando avaliador126 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador126, coordenador: false)

puts "Criando usuário jalon.medeiros@ifrn.edu.br"
avaliador127 = Usuario.create(nome: 'Jalon Barbosa de Medeiros', email: 'jalon.medeiros@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador127 = Organizador.create(usuario: avaliador127)
puts "Adicionando avaliador127 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador127, coordenador: false)
puts "Adicionando avaliador127 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador127, coordenador: false)
puts "Adicionando avaliador127 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador127, coordenador: false)
puts "Adicionando avaliador127 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador127, coordenador: false)

puts "Criando usuário daniele.bezerra@ifrn.edu.br"
avaliador128 = Usuario.create(nome: 'Daniele Bezerra dos Santos', email: 'daniele.bezerra@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador128 = Organizador.create(usuario: avaliador128)
puts "Adicionando avaliador128 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador128, coordenador: false)
puts "Adicionando avaliador128 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador128, coordenador: false)
puts "Adicionando avaliador128 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador128, coordenador: false)
puts "Adicionando avaliador128 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador128, coordenador: false)
puts "Adicionando avaliador128 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador128, coordenador: false)
puts "Adicionando avaliador128 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador128, coordenador: false)
puts "Adicionando avaliador128 a linha linha_congic_recursos_pesqueiros_engenharia_pesca"
Membro.create(linha: linha_congic_recursos_pesqueiros_engenharia_pesca, organizador: avaliador128, coordenador: false)

puts "Procurando usuário marcus.sampaio@ifrn.edu.br"
avaliador129 = Usuario.find_by(email: 'marcus.sampaio@ifrn.edu.br')
avaliador129 = Organizador.find_by(usuario: avaliador129)
puts "Adicionando avaliador129 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador129, coordenador: false)
puts "Adicionando avaliador129 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador129, coordenador: false)
puts "Adicionando avaliador129 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador129, coordenador: false)
puts "Adicionando avaliador129 a linha linha_congic_economia"
Membro.create(linha: linha_congic_economia, organizador: avaliador129, coordenador: false)

puts "Criando usuário maria.kassimati@ifrn.edu.br"
avaliador130 = Usuario.create(nome: 'Maria Kassimati Milanez', email: 'maria.kassimati@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador130 = Organizador.create(usuario: avaliador130)
puts "Adicionando avaliador130 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador130, coordenador: false)
puts "Adicionando avaliador130 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador130, coordenador: false)
puts "Adicionando avaliador130 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador130, coordenador: false)

puts "Criando usuário joelma.tito@ifrn.edu.br"
avaliador131 = Usuario.create(nome: 'Joelma Tito da Silva', email: 'joelma.tito@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador131 = Organizador.create(usuario: avaliador131)
puts "Adicionando avaliador131 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador131, coordenador: false)
puts "Adicionando avaliador131 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador131, coordenador: false)
puts "Adicionando avaliador131 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador131, coordenador: false)
puts "Adicionando avaliador131 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador131, coordenador: false)

puts "Criando usuário trajano.ana@ifrn.edu.br"
avaliador132 = Usuario.create(nome: 'ANA ELIZA TRAJANO SOARES', email: 'trajano.ana@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador132 = Organizador.create(usuario: avaliador132)
puts "Adicionando avaliador132 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador132, coordenador: false)
puts "Adicionando avaliador132 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador132, coordenador: false)
puts "Adicionando avaliador132 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador132, coordenador: false)

puts "Criando usuário joycimara.rodrigues@ifrn.edu.br"
avaliador133 = Usuario.create(nome: 'Joycimara de Morais Rodrigues', email: 'joycimara.rodrigues@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador133 = Organizador.create(usuario: avaliador133)
puts "Adicionando avaliador133 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador133, coordenador: false)
puts "Adicionando avaliador133 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador133, coordenador: false)

puts "Criando usuário alexandre.medeiros@ifrn.edu.br"
avaliador134 = Usuario.create(nome: 'Alexandre Medeiros de Araujo', email: 'alexandre.medeiros@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador134 = Organizador.create(usuario: avaliador134)
puts "Adicionando avaliador134 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador134, coordenador: false)
puts "Adicionando avaliador134 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador134, coordenador: false)

puts "Criando usuário cristinasouzabispo@yahoo.com.br"
avaliador135 = Usuario.create(nome: 'Cristina de Souza Bispo', email: 'cristinasouzabispo@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador135 = Organizador.create(usuario: avaliador135)
puts "Adicionando avaliador135 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador135, coordenador: false)
puts "Adicionando avaliador135 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador135, coordenador: false)

puts "Criando usuário severino.gomes@ifrn.edu.br"
avaliador136 = Usuario.create(nome: 'Severino Carlos Gomes', email: 'severino.gomes@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador136 = Organizador.create(usuario: avaliador136)
puts "Adicionando avaliador136 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador136, coordenador: false)
puts "Adicionando avaliador136 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador136, coordenador: false)
puts "Adicionando avaliador136 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador136, coordenador: false)

puts "Criando usuário fernanda_potiguar@yahoo.com.br"
avaliador137 = Usuario.create(nome: 'Fernanda de Moura Ferreira', email: 'fernanda_potiguar@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador137 = Organizador.create(usuario: avaliador137)
puts "Adicionando avaliador137 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador137, coordenador: false)
puts "Adicionando avaliador137 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador137, coordenador: false)

puts "Criando usuário ulisandra.lima@ifrn.edu.br"
avaliador138 = Usuario.create(nome: 'Ulisandra Ribeiro de Lima', email: 'ulisandra.lima@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador138 = Organizador.create(usuario: avaliador138)
puts "Adicionando avaliador138 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador138, coordenador: false)

puts "Criando usuário souza.daniela@ifrn.edu.br"
avaliador139 = Usuario.create(nome: 'Daniela Karla de Souza Xavier', email: 'souza.daniela@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador139 = Organizador.create(usuario: avaliador139)
puts "Adicionando avaliador139 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador139, coordenador: false)
puts "Adicionando avaliador139 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador139, coordenador: false)
puts "Adicionando avaliador139 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador139, coordenador: false)

puts "Criando usuário aldinizia.souza@ifrn.edu"
avaliador140 = Usuario.create(nome: 'Aldinizia de Medeiros Souza', email: 'aldinizia.souza@ifrn.edu', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador140 = Organizador.create(usuario: avaliador140)
puts "Adicionando avaliador140 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador140, coordenador: false)

puts "Criando usuário diego.cirne@ifrn.edu.br"
avaliador141 = Usuario.create(nome: 'José Diego Cirne Santos', email: 'diego.cirne@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador141 = Organizador.create(usuario: avaliador141)
puts "Adicionando avaliador141 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador141, coordenador: false)

puts "Criando usuário ana.aguiar@ifrn.edu.br"
avaliador142 = Usuario.create(nome: 'Ana Cristina Costa Aguiar', email: 'ana.aguiar@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador142 = Organizador.create(usuario: avaliador142)
puts "Adicionando avaliador142 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador142, coordenador: false)
puts "Adicionando avaliador142 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador142, coordenador: false)
puts "Adicionando avaliador142 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador142, coordenador: false)

puts "Criando usuário george.gomes@ifrn.edu.br"
avaliador143 = Usuario.create(nome: 'George Martins Gomes', email: 'george.gomes@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador143 = Organizador.create(usuario: avaliador143)
puts "Adicionando avaliador143 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador143, coordenador: false)

puts "Criando usuário karina.vasconcelos@ifrn.edu.br"
avaliador144 = Usuario.create(nome: 'Anna Karina Vasconcelos Nascimento Trindade', email: 'karina.vasconcelos@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador144 = Organizador.create(usuario: avaliador144)
puts "Adicionando avaliador144 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador144, coordenador: false)
puts "Adicionando avaliador144 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador144, coordenador: false)
puts "Adicionando avaliador144 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador144, coordenador: false)
puts "Adicionando avaliador144 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador144, coordenador: false)

puts "Criando usuário alexandrearaujo.gppcom@gmail.com"
avaliador145 = Usuario.create(nome: 'Alexandre de Moraes Araújo', email: 'alexandrearaujo.gppcom@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador145 = Organizador.create(usuario: avaliador145)
puts "Adicionando avaliador145 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador145, coordenador: false)


puts "Criando usuário leo.moreira@me.com"
avaliador147 = Usuario.create(nome: 'Leo Moreira Silva', email: 'leo.moreira@me.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador147 = Organizador.create(usuario: avaliador147)
puts "Adicionando avaliador147 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador147, coordenador: false)

puts "Criando usuário idelmarcia.dantas@ifrn.edu.br"
avaliador148 = Usuario.create(nome: 'Idelmarcia Dantas de Oliveira', email: 'idelmarcia.dantas@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador148 = Organizador.create(usuario: avaliador148)
puts "Adicionando avaliador148 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador148, coordenador: false)

puts "Criando usuário gislene.araujo@ifrn.edu.br"
avaliador149 = Usuario.create(nome: 'Gislene de Araujo Alves', email: 'gislene.araujo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador149 = Organizador.create(usuario: avaliador149)
puts "Adicionando avaliador149 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador149, coordenador: false)

puts "Criando usuário rosane.andrade@ifrn.edu.br"
avaliador150 = Usuario.create(nome: 'Rosane Sousa de Andrade', email: 'rosane.andrade@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador150 = Organizador.create(usuario: avaliador150)
puts "Adicionando avaliador150 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador150, coordenador: false)

puts "Criando usuário renanmoraes_ifce@hotmail.com"
avaliador151 = Usuario.create(nome: 'Renan Fernandes de Moraes', email: 'renanmoraes_ifce@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador151 = Organizador.create(usuario: avaliador151)
puts "Adicionando avaliador151 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador151, coordenador: false)

puts "Criando usuário shirley.genuino@ifrn.edu.br "
avaliador152 = Usuario.create(nome: 'Shirley Luanna Vieira Peixoto Genuíno', email: 'shirley.genuino@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador152 = Organizador.create(usuario: avaliador152)
puts "Adicionando avaliador152 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador152, coordenador: false)

puts "Criando usuário augustodlx@yahoo.com.br"
avaliador153 = Usuario.create(nome: 'Augusto de Lima Xavier', email: 'augustodlx@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador153 = Organizador.create(usuario: avaliador153)
puts "Adicionando avaliador153 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador153, coordenador: false)

puts "Criando usuário divino.cruz@ifrn.edu.br"
avaliador154 = Usuario.create(nome: 'Paulo divino ribeiro da cruz', email: 'divino.cruz@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador154 = Organizador.create(usuario: avaliador154)
puts "Adicionando avaliador154 a linha linha_simposio_comunicacao"
Membro.create(linha: linha_simposio_comunicacao, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_simposio_trabalho"
Membro.create(linha: linha_simposio_trabalho, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_servico_social"
Membro.create(linha: linha_congic_servico_social, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador154, coordenador: false)
puts "Adicionando avaliador154 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador154, coordenador: false)

puts "Criando usuário micaeldamasceno@gmail.com"
avaliador155 = Usuario.create(nome: 'Micael Batista Damasceno', email: 'micaeldamasceno@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador155 = Organizador.create(usuario: avaliador155)
puts "Adicionando avaliador155 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador155, coordenador: false)
puts "Adicionando avaliador155 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador155, coordenador: false)
puts "Adicionando avaliador155 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador155, coordenador: false)
puts "Adicionando avaliador155 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador155, coordenador: false)

puts "Criando usuário jonas.morais@ifrn.edu.br"
avaliador156 = Usuario.create(nome: 'Jonas Morais Sobrinho', email: 'jonas.morais@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador156 = Organizador.create(usuario: avaliador156)
puts "Adicionando avaliador156 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador156, coordenador: false)
puts "Adicionando avaliador156 a linha linha_simposio_saude"
Membro.create(linha: linha_simposio_saude, organizador: avaliador156, coordenador: false)
puts "Adicionando avaliador156 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador156, coordenador: false)

puts "Criando usuário viviane.pinheiro@ifrn.edu.br"
avaliador157 = Usuario.create(nome: 'Viviane da Silva Pinheiro Dantas', email: 'viviane.pinheiro@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador157 = Organizador.create(usuario: avaliador157)
puts "Adicionando avaliador157 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador157, coordenador: false)
puts "Adicionando avaliador157 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador157, coordenador: false)


puts "Criando usuário ferreira.marcionila@ifrn.edu.br"
avaliador159 = Usuario.create(nome: 'Marcionila de Oliveira Ferreira', email: 'ferreira.marcionila@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador159 = Organizador.create(usuario: avaliador159)
puts "Adicionando avaliador159 a linha linha_simposio_educacao"
Membro.create(linha: linha_simposio_educacao, organizador: avaliador159, coordenador: false)
puts "Adicionando avaliador159 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador159, coordenador: false)
puts "Adicionando avaliador159 a linha linha_simposio_tecnologia_producao"
Membro.create(linha: linha_simposio_tecnologia_producao, organizador: avaliador159, coordenador: false)

puts "Criando usuário cedrickgomes@gmail.com"
avaliador160 = Usuario.create(nome: 'Cédrick Cunha Gomes da Silva', email: 'cedrickgomes@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador160 = Organizador.create(usuario: avaliador160)
puts "Adicionando avaliador160 a linha linha_simposio_meio_ambiente"
Membro.create(linha: linha_simposio_meio_ambiente, organizador: avaliador160, coordenador: false)
puts "Adicionando avaliador160 a linha linha_simposio_cultura"
Membro.create(linha: linha_simposio_cultura, organizador: avaliador160, coordenador: false)
puts "Adicionando avaliador160 a linha linha_simposio_direitos_humanos_justica"
Membro.create(linha: linha_simposio_direitos_humanos_justica, organizador: avaliador160, coordenador: false)

puts "Criando usuário marta.nepomuceno@outlook.com"
avaliador161 = Usuario.create(nome: 'Maria Marta Nepomuceno Rodrigues Cândido', email: 'marta.nepomuceno@outlook.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador161 = Organizador.create(usuario: avaliador161)
puts "Adicionando avaliador161 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador161, coordenador: false)
puts "Adicionando avaliador161 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador161, coordenador: false)
puts "Adicionando avaliador161 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador161, coordenador: false)

puts "Criando usuário ronison.ifrn@gmail.com"
avaliador162 = Usuario.create(nome: 'RONISON INOCENCIO NUNES', email: 'ronison.ifrn@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador162 = Organizador.create(usuario: avaliador162)
puts "Adicionando avaliador162 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_servico_social"
Membro.create(linha: linha_congic_servico_social, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_astronomia"
Membro.create(linha: linha_congic_astronomia, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador162, coordenador: false)
puts "Adicionando avaliador162 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador162, coordenador: false)

puts "Criando usuário andrenobrega999@gmail.com"
avaliador163 = Usuario.create(nome: 'André Elias de Oliveira Nóbrega', email: 'andrenobrega999@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador163 = Organizador.create(usuario: avaliador163)
puts "Adicionando avaliador163 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador163, coordenador: false)
puts "Adicionando avaliador163 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador163, coordenador: false)

puts "Criando usuário mario.tavares@ifrn.edu.br"
avaliador164 = Usuario.create(nome: 'Mário Tavares', email: 'mario.tavares@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador164 = Organizador.create(usuario: avaliador164)
puts "Adicionando avaliador164 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador164, coordenador: false)
puts "Adicionando avaliador164 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador164, coordenador: false)
puts "Adicionando avaliador164 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador164, coordenador: false)
puts "Adicionando avaliador164 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador164, coordenador: false)

puts "Criando usuário jardel.comex@gmail.com"
avaliador165 = Usuario.create(nome: 'GENIVAL JARDEL TRAJANO TEIXEIRA', email: 'jardel.comex@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador165 = Organizador.create(usuario: avaliador165)
puts "Adicionando avaliador165 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador165, coordenador: false)

puts "Criando usuário agripina.reboucas@ifrn.edu.br"
avaliador166 = Usuario.create(nome: 'Maria Agripina Pereira Rebouças', email: 'agripina.reboucas@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador166 = Organizador.create(usuario: avaliador166)
puts "Adicionando avaliador166 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador166, coordenador: false)
puts "Adicionando avaliador166 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador166, coordenador: false)

puts "Criando usuário robsonkingboy@gmail.com"
avaliador167 = Usuario.create(nome: 'Robson Cabral Severo', email: 'robsonkingboy@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador167 = Organizador.create(usuario: avaliador167)
puts "Adicionando avaliador167 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador167, coordenador: false)

puts "Criando usuário sizenande.bispo@ifrr.edu.br"
avaliador168 = Usuario.create(nome: 'SIZENANDE DE SOUSA BISPO', email: 'sizenande.bispo@ifrr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador168 = Organizador.create(usuario: avaliador168)
puts "Adicionando avaliador168 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_servico_social"
Membro.create(linha: linha_congic_servico_social, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_recursos_florestais_engenharia_florestal"
Membro.create(linha: linha_congic_recursos_florestais_engenharia_florestal, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador168, coordenador: false)
puts "Adicionando avaliador168 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador168, coordenador: false)

puts "Criando usuário maria.sousa@ifrn.edu.br"
avaliador169 = Usuario.create(nome: 'MARIA RITA DE SOUSA', email: 'maria.sousa@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador169 = Organizador.create(usuario: avaliador169)
puts "Adicionando avaliador169 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_engenharia_agricola"
Membro.create(linha: linha_congic_engenharia_agricola, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador169, coordenador: false)
puts "Adicionando avaliador169 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador169, coordenador: false)

puts "Criando usuário celso.soares@ifpe.edu.br"
avaliador170 = Usuario.create(nome: 'CELSO LIBORIO SOARES', email: 'celso.soares@ifpe.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador170 = Organizador.create(usuario: avaliador170)
puts "Adicionando avaliador170 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_economia"
Membro.create(linha: linha_congic_economia, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_engenharia_agricola"
Membro.create(linha: linha_congic_engenharia_agricola, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_recursos_florestais_engenharia_florestal"
Membro.create(linha: linha_congic_recursos_florestais_engenharia_florestal, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador170, coordenador: false)
puts "Adicionando avaliador170 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador170, coordenador: false)

puts "Criando usuário jose.filho@ifrj.edu.br"
avaliador171 = Usuario.create(nome: 'JOSE FRANCISCO FILHO', email: 'jose.filho@ifrj.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador171 = Organizador.create(usuario: avaliador171)
puts "Adicionando avaliador171 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_biofisica"
Membro.create(linha: linha_congic_biofisica, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_recursos_pesqueiros_engenharia_pesca"
Membro.create(linha: linha_congic_recursos_pesqueiros_engenharia_pesca, organizador: avaliador171, coordenador: false)
puts "Adicionando avaliador171 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador171, coordenador: false)

puts "Criando usuário andre.alves@ifrn.edu.br"
avaliador172 = Usuario.create(nome: 'Antônio André Alves', email: 'andre.alves@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador172 = Organizador.create(usuario: avaliador172)
puts "Adicionando avaliador172 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador172, coordenador: false)
puts "Adicionando avaliador172 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador172, coordenador: false)
puts "Adicionando avaliador172 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador172, coordenador: false)

puts "Criando usuário roberto.lima@ifrn.edu.br"
avaliador173 = Usuario.create(nome: 'Roberto Rodrigues Cunha Lima', email: 'roberto.lima@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador173 = Organizador.create(usuario: avaliador173)
puts "Adicionando avaliador173 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador173, coordenador: false)
puts "Adicionando avaliador173 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador173, coordenador: false)
puts "Adicionando avaliador173 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador173, coordenador: false)
puts "Adicionando avaliador173 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador173, coordenador: false)

puts "Criando usuário jose.filho@ifsc.edu.br"
avaliador174 = Usuario.create(nome: 'JOSE MODESTO FILHO', email: 'jose.filho@ifsc.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador174 = Organizador.create(usuario: avaliador174)
puts "Adicionando avaliador174 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_astronomia"
Membro.create(linha: linha_congic_astronomia, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador174, coordenador: false)
puts "Adicionando avaliador174 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador174, coordenador: false)

puts "Criando usuário rivandrade@yahoo.com.br"
avaliador175 = Usuario.create(nome: 'RIVALDAVIA CARMO DE ANDRADE', email: 'rivandrade@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador175 = Organizador.create(usuario: avaliador175)
puts "Adicionando avaliador175 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador175, coordenador: false)
puts "Adicionando avaliador175 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador175, coordenador: false)
puts "Adicionando avaliador175 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador175, coordenador: false)

puts "Criando usuário jnilsonmorais@yahoo.com.br"
avaliador176 = Usuario.create(nome: 'Jose Nilson Morais', email: 'jnilsonmorais@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador176 = Organizador.create(usuario: avaliador176)
puts "Adicionando avaliador176 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador176, coordenador: false)
puts "Adicionando avaliador176 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador176, coordenador: false)

puts "Criando usuário jose.kleber@ifrn.edu.br"
avaliador177 = Usuario.create(nome: 'José Kleber Costa de Oliveira', email: 'jose.kleber@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador177 = Organizador.create(usuario: avaliador177)
puts "Adicionando avaliador177 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador177, coordenador: false)

puts "Criando usuário regisln2434@gmail.com"
avaliador178 = Usuario.create(nome: 'Régis Lopes Nogueira', email: 'regisln2434@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador178 = Organizador.create(usuario: avaliador178)
puts "Adicionando avaliador178 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador178, coordenador: false)
puts "Adicionando avaliador178 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador178, coordenador: false)

puts "Criando usuário sandrosousaadv@yahoo.com"
avaliador179 = Usuario.create(nome: 'Sandro Luis de Sousa', email: 'sandrosousaadv@yahoo.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador179 = Organizador.create(usuario: avaliador179)
puts "Adicionando avaliador179 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador179, coordenador: false)
puts "Adicionando avaliador179 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador179, coordenador: false)
puts "Adicionando avaliador179 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador179, coordenador: false)

puts "Criando usuário jorge.rabelo@ifrn.edu.br"
avaliador180 = Usuario.create(nome: 'jorge luiz ferreira rabelo', email: 'jorge.rabelo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador180 = Organizador.create(usuario: avaliador180)
puts "Adicionando avaliador180 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador180, coordenador: false)
puts "Adicionando avaliador180 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador180, coordenador: false)

puts "Criando usuário gilda.lucia@escolar.ifrn.edu.br​"
avaliador181 = Usuario.create(nome: 'GILDA LUCIA BAKKER BATISTA DE MENEZES', email: 'gilda.lucia@escolar.ifrn.edu.br​', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador181 = Organizador.create(usuario: avaliador181)
puts "Adicionando avaliador181 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador181, coordenador: false)
puts "Adicionando avaliador181 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador181, coordenador: false)

puts "Criando usuário silvio.pereira@ifpb.edu.br"
avaliador182 = Usuario.create(nome: 'SILVIO PIO PEREIRA', email: 'silvio.pereira@ifpb.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador182 = Organizador.create(usuario: avaliador182)
puts "Adicionando avaliador182 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_economia"
Membro.create(linha: linha_congic_economia, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_enfermagem"
Membro.create(linha: linha_congic_enfermagem, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_biofisica"
Membro.create(linha: linha_congic_biofisica, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_engenharia_agricola"
Membro.create(linha: linha_congic_engenharia_agricola, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador182, coordenador: false)
puts "Adicionando avaliador182 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador182, coordenador: false)

puts "Criando usuário anita.lima@gmail.com"
avaliador183 = Usuario.create(nome: 'Anita Maria de Lima', email: 'anita.lima@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador183 = Organizador.create(usuario: avaliador183)
puts "Adicionando avaliador183 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador183, coordenador: false)
puts "Adicionando avaliador183 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador183, coordenador: false)
puts "Adicionando avaliador183 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador183, coordenador: false)
puts "Adicionando avaliador183 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador183, coordenador: false)

puts "Criando usuário gustavobarbalho2010@hotmail.com"
avaliador184 = Usuario.create(nome: 'GUSTAVO BARBALHO', email: 'gustavobarbalho2010@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador184 = Organizador.create(usuario: avaliador184)
puts "Adicionando avaliador184 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador184, coordenador: false)
puts "Adicionando avaliador184 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador184, coordenador: false)
puts "Adicionando avaliador184 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador184, coordenador: false)
puts "Adicionando avaliador184 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador184, coordenador: false)
puts "Adicionando avaliador184 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador184, coordenador: false)
puts "Adicionando avaliador184 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador184, coordenador: false)

puts "Criando usuário wagner.alves@ifpe.edu.br"
avaliador185 = Usuario.create(nome: 'WAGNER ANTONIO ALVES', email: 'wagner.alves@ifpe.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador185 = Organizador.create(usuario: avaliador185)
puts "Adicionando avaliador185 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_economia"
Membro.create(linha: linha_congic_economia, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_biofisica"
Membro.create(linha: linha_congic_biofisica, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_recursos_pesqueiros_engenharia_pesca"
Membro.create(linha: linha_congic_recursos_pesqueiros_engenharia_pesca, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador185, coordenador: false)
puts "Adicionando avaliador185 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador185, coordenador: false)

puts "Criando usuário cristianeclebia@gmail.com"
avaliador186 = Usuario.create(nome: 'Cristiane Clébia Barbosa', email: 'cristianeclebia@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador186 = Organizador.create(usuario: avaliador186)
puts "Adicionando avaliador186 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador186, coordenador: false)
puts "Adicionando avaliador186 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador186, coordenador: false)
puts "Adicionando avaliador186 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador186, coordenador: false)

puts "Criando usuário erivaldounp@hotmail.com"
avaliador187 = Usuario.create(nome: 'Erivaldo Xavier de Lima', email: 'erivaldounp@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador187 = Organizador.create(usuario: avaliador187)
puts "Adicionando avaliador187 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador187, coordenador: false)
puts "Adicionando avaliador187 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador187, coordenador: false)
puts "Adicionando avaliador187 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador187, coordenador: false)
puts "Adicionando avaliador187 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador187, coordenador: false)

puts "Criando usuário jalvaro.paiva@gmail.com"
avaliador188 = Usuario.create(nome: 'JOSÉ ALVARO DE PAIVA', email: 'jalvaro.paiva@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador188 = Organizador.create(usuario: avaliador188)
puts "Adicionando avaliador188 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador188, coordenador: false)

puts "Criando usuário elisanbh@gmail.com"
avaliador189 = Usuario.create(nome: 'Elisângela Bezerra das Neves Holanda', email: 'elisanbh@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador189 = Organizador.create(usuario: avaliador189)
puts "Adicionando avaliador189 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador189, coordenador: false)
puts "Adicionando avaliador189 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador189, coordenador: false)

puts "Criando usuário marcone.silva@ifrn.edu.br"
avaliador190 = Usuario.create(nome: 'Marcone Silva da Costa', email: 'marcone.silva@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador190 = Organizador.create(usuario: avaliador190)
puts "Adicionando avaliador190 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador190, coordenador: false)
puts "Adicionando avaliador190 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador190, coordenador: false)
puts "Adicionando avaliador190 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador190, coordenador: false)
puts "Adicionando avaliador190 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador190, coordenador: false)

puts "Criando usuário carla.katarina@gmail.com"
avaliador191 = Usuario.create(nome: 'Carla Katarina de Monteiro Marques', email: 'carla.katarina@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador191 = Organizador.create(usuario: avaliador191)
puts "Adicionando avaliador191 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador191, coordenador: false)

puts "Criando usuário charles.freitas@ifrn.edu.br"
avaliador192 = Usuario.create(nome: 'Charles Cesar Magno de Freitas', email: 'charles.freitas@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador192 = Organizador.create(usuario: avaliador192)
puts "Adicionando avaliador192 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador192, coordenador: false)

puts "Criando usuário jean.tavares@ifrn.edu.br"
avaliador193 = Usuario.create(nome: 'JEAN LEITE TAVARES ', email: 'jean.tavares@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador193 = Organizador.create(usuario: avaliador193)
puts "Adicionando avaliador193 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador193, coordenador: false)
puts "Adicionando avaliador193 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador193, coordenador: false)
puts "Adicionando avaliador193 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador193, coordenador: false)
puts "Adicionando avaliador193 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador193, coordenador: false)
puts "Adicionando avaliador193 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador193, coordenador: false)
puts "Adicionando avaliador193 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador193, coordenador: false)
puts "Adicionando avaliador193 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador193, coordenador: false)
puts "Adicionando avaliador193 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador193, coordenador: false)
puts "Adicionando avaliador193 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador193, coordenador: false)
puts "Adicionando avaliador193 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador193, coordenador: false)

puts "Criando usuário mauro.meyer@ifrn.edu.br"
avaliador194 = Usuario.create(nome: 'Mauro Froes Meyer', email: 'mauro.meyer@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador194 = Organizador.create(usuario: avaliador194)
puts "Adicionando avaliador194 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador194, coordenador: false)
puts "Adicionando avaliador194 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador194, coordenador: false)
puts "Adicionando avaliador194 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador194, coordenador: false)
puts "Adicionando avaliador194 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador194, coordenador: false)
puts "Adicionando avaliador194 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador194, coordenador: false)

puts "Criando usuário diogoquantum@gmail.com"
avaliador195 = Usuario.create(nome: 'Diogo Pereira Bezerra ', email: 'diogoquantum@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador195 = Organizador.create(usuario: avaliador195)
puts "Adicionando avaliador195 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador195, coordenador: false)
puts "Adicionando avaliador195 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador195, coordenador: false)
puts "Adicionando avaliador195 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador195, coordenador: false)
puts "Adicionando avaliador195 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador195, coordenador: false)
puts "Adicionando avaliador195 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador195, coordenador: false)

puts "Criando usuário adss_santos@yahoo.com.br"
avaliador196 = Usuario.create(nome: 'Adriana de Souza Santos', email: 'adss_santos@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador196 = Organizador.create(usuario: avaliador196)
puts "Adicionando avaliador196 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador196, coordenador: false)
puts "Adicionando avaliador196 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador196, coordenador: false)
puts "Adicionando avaliador196 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador196, coordenador: false)
puts "Adicionando avaliador196 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador196, coordenador: false)
puts "Adicionando avaliador196 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador196, coordenador: false)

puts "Criando usuário brunnicastro@hotmail.com"
avaliador197 = Usuario.create(nome: 'Ahiram Brunni Cartaxo de Castro', email: 'brunnicastro@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador197 = Organizador.create(usuario: avaliador197)
puts "Adicionando avaliador197 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador197, coordenador: false)

puts "Criando usuário ailton.dantas@ifrn.edu.br"
avaliador198 = Usuario.create(nome: 'Ailton Dantas de Lima', email: 'ailton.dantas@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador198 = Organizador.create(usuario: avaliador198)
puts "Adicionando avaliador198 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador198, coordenador: false)
puts "Adicionando avaliador198 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador198, coordenador: false)

puts "Criando usuário alenilda.fernandes@hotmail.com"
avaliador199 = Usuario.create(nome: 'Alenilda Fernandes', email: 'alenilda.fernandes@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador199 = Organizador.create(usuario: avaliador199)
puts "Adicionando avaliador199 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador199, coordenador: false)

puts "Criando usuário alessandro.souza@ifrn.edu.br"
avaliador200 = Usuario.create(nome: 'Alessandro José de Souza', email: 'alessandro.souza@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador200 = Organizador.create(usuario: avaliador200)
puts "Adicionando avaliador200 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador200, coordenador: false)

puts "Criando usuário alexandre.pereira@ifrn.edu.br"
avaliador201 = Usuario.create(nome: 'Alexandre da Costa Pereira', email: 'alexandre.pereira@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador201 = Organizador.create(usuario: avaliador201)
puts "Adicionando avaliador201 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador201, coordenador: false)

puts "Criando usuário sr.alexandre16@hotmail.com"
avaliador202 = Usuario.create(nome: 'Alexandre Rodrigues Caitano', email: 'sr.alexandre16@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador202 = Organizador.create(usuario: avaliador202)
puts "Adicionando avaliador202 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador202, coordenador: false)
puts "Adicionando avaliador202 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador202, coordenador: false)

puts "Criando usuário alianpaiva@ifrn.edu.br"
avaliador203 = Usuario.create(nome: 'ALIAN PAIVA DE ARRUDA DO NASCIMENTO', email: 'alianpaiva@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador203 = Organizador.create(usuario: avaliador203)
puts "Adicionando avaliador203 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador203, coordenador: false)

puts "Criando usuário carolinaveras@yahoo.com"
avaliador204 = Usuario.create(nome: 'Ana Carolina Veras do Nascimento', email: 'carolinaveras@yahoo.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador204 = Organizador.create(usuario: avaliador204)
puts "Adicionando avaliador204 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador204, coordenador: false)
puts "Adicionando avaliador204 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador204, coordenador: false)
puts "Adicionando avaliador204 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador204, coordenador: false)
puts "Adicionando avaliador204 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador204, coordenador: false)

puts "Criando usuário anacmafra@yahoo.com.br"
avaliador205 = Usuario.create(nome: 'Ana Claudia Mafra da Fonseca', email: 'anacmafra@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador205 = Organizador.create(usuario: avaliador205)
puts "Adicionando avaliador205 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador205, coordenador: false)
puts "Adicionando avaliador205 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador205, coordenador: false)
puts "Adicionando avaliador205 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador205, coordenador: false)

puts "Criando usuário katnega@gmail.com"
avaliador206 = Usuario.create(nome: 'Ana Katarina Oliveira Aragão', email: 'katnega@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador206 = Organizador.create(usuario: avaliador206)
puts "Adicionando avaliador206 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_engenharia_agricola"
Membro.create(linha: linha_congic_engenharia_agricola, organizador: avaliador206, coordenador: false)
puts "Adicionando avaliador206 a linha linha_congic_recursos_florestais_engenharia_florestal"
Membro.create(linha: linha_congic_recursos_florestais_engenharia_florestal, organizador: avaliador206, coordenador: false)

puts "Criando usuário raira.arjs@gmail.com"
avaliador207 = Usuario.create(nome: 'ANA RAIRA GONÇALVES  DA SILVA', email: 'raira.arjs@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador207 = Organizador.create(usuario: avaliador207)
puts "Adicionando avaliador207 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador207, coordenador: false)
puts "Adicionando avaliador207 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador207, coordenador: false)


puts "Criando usuário andreilson.oliveira@ifrn.edu.br"
avaliador209 = Usuario.create(nome: 'Andreilson Oliveira da Silva', email: 'andreilson.oliveira@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador209 = Organizador.create(usuario: avaliador209)
puts "Adicionando avaliador209 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador209, coordenador: false)
puts "Adicionando avaliador209 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador209, coordenador: false)

puts "Criando usuário angelycalanynne@gmail.com"
avaliador210 = Usuario.create(nome: 'Angelyca Lanynne Santos Silva ', email: 'angelycalanynne@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador210 = Organizador.create(usuario: avaliador210)
puts "Adicionando avaliador210 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador210, coordenador: false)


puts "Criando usuário antonio.neto3@ifrn.edu.br"
avaliador212 = Usuario.create(nome: 'Antonio Abreu da Silveira Neto', email: 'antonio.neto3@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador212 = Organizador.create(usuario: avaliador212)
puts "Adicionando avaliador212 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador212, coordenador: false)

puts "Criando usuário edson.filho@ifrn.edu.br"
avaliador213 = Usuario.create(nome: 'Antonio Edson Pereira Da Silva Filho ', email: 'edson.filho@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador213 = Organizador.create(usuario: avaliador213)
puts "Adicionando avaliador213 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador213, coordenador: false)

puts "Criando usuário antoniomarques.santos@ifma.edu.br"
avaliador214 = Usuario.create(nome: 'Antonio Marques dos Santos', email: 'antoniomarques.santos@ifma.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador214 = Organizador.create(usuario: avaliador214)
puts "Adicionando avaliador214 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador214, coordenador: false)
puts "Adicionando avaliador214 a linha linha_congic_biofisica"
Membro.create(linha: linha_congic_biofisica, organizador: avaliador214, coordenador: false)

puts "Criando usuário arilene.lucena@ifrn.edu.br"
avaliador215 = Usuario.create(nome: 'Arilene Lucena de Medeiros', email: 'arilene.lucena@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador215 = Organizador.create(usuario: avaliador215)
puts "Adicionando avaliador215 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador215, coordenador: false)
puts "Adicionando avaliador215 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador215, coordenador: false)

puts "Criando usuário brunaraissags@gmail.com"
avaliador216 = Usuario.create(nome: 'Bruna Raíssa Gomes dos Santos Batista', email: 'brunaraissags@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador216 = Organizador.create(usuario: avaliador216)
puts "Adicionando avaliador216 a linha linha_congic_astronomia"
Membro.create(linha: linha_congic_astronomia, organizador: avaliador216, coordenador: false)
puts "Adicionando avaliador216 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador216, coordenador: false)

puts "Criando usuário bruno.barbalho@ifrn.edu.br"
avaliador217 = Usuario.create(nome: 'Bruno Castro Barbalho', email: 'bruno.barbalho@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador217 = Organizador.create(usuario: avaliador217)
puts "Adicionando avaliador217 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador217, coordenador: false)
puts "Adicionando avaliador217 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador217, coordenador: false)
puts "Adicionando avaliador217 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador217, coordenador: false)

puts "Criando usuário brunojosebj19@gmail.com"
avaliador218 = Usuario.create(nome: 'Bruno José Bezerra Silva', email: 'brunojosebj19@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador218 = Organizador.create(usuario: avaliador218)
puts "Adicionando avaliador218 a linha linha_congic_economia"
Membro.create(linha: linha_congic_economia, organizador: avaliador218, coordenador: false)

puts "Criando usuário camila.pacelly@ifrn.edu.br"
avaliador219 = Usuario.create(nome: 'Camila Pacelly Brandão de Araújo', email: 'camila.pacelly@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador219 = Organizador.create(usuario: avaliador219)
puts "Adicionando avaliador219 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador219, coordenador: false)
puts "Adicionando avaliador219 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador219, coordenador: false)
puts "Adicionando avaliador219 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador219, coordenador: false)

puts "Criando usuário carlindoavelino@gmail.com"
avaliador220 = Usuario.create(nome: 'Carlindo Avelino Bezerra Neto', email: 'carlindoavelino@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador220 = Organizador.create(usuario: avaliador220)
puts "Adicionando avaliador220 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador220, coordenador: false)

puts "Criando usuário eduardo.freire@ifrn.edu.br"
avaliador221 = Usuario.create(nome: 'Carlos Eduardo Campos Freire', email: 'eduardo.freire@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador221 = Organizador.create(usuario: avaliador221)
puts "Adicionando avaliador221 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador221, coordenador: false)
puts "Adicionando avaliador221 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador221, coordenador: false)
puts "Adicionando avaliador221 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador221, coordenador: false)
puts "Adicionando avaliador221 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador221, coordenador: false)
puts "Adicionando avaliador221 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador221, coordenador: false)

puts "Criando usuário dantas.ceres@ifrn.edu.br"
avaliador222 = Usuario.create(nome: 'Ceres Virginia da Costa Dantas', email: 'dantas.ceres@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador222 = Organizador.create(usuario: avaliador222)
puts "Adicionando avaliador222 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador222, coordenador: false)
puts "Adicionando avaliador222 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador222, coordenador: false)
puts "Adicionando avaliador222 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador222, coordenador: false)

puts "Criando usuário charlyene.souza@ifrn.edu.br"
avaliador223 = Usuario.create(nome: 'Charlyene Santos de Souza', email: 'charlyene.souza@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador223 = Organizador.create(usuario: avaliador223)
puts "Adicionando avaliador223 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador223, coordenador: false)
puts "Adicionando avaliador223 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador223, coordenador: false)
puts "Adicionando avaliador223 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador223, coordenador: false)

puts "Criando usuário cleiton.medeiros@ifrn.edu.br"
avaliador224 = Usuario.create(nome: 'CLEITON da silva MEDEIROS', email: 'cleiton.medeiros@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador224 = Organizador.create(usuario: avaliador224)
puts "Adicionando avaliador224 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador224, coordenador: false)
puts "Adicionando avaliador224 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador224, coordenador: false)

puts "Criando usuário cleonecc@gmail.com"
avaliador225 = Usuario.create(nome: 'Cleone Silva de Lima', email: 'cleonecc@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador225 = Organizador.create(usuario: avaliador225)
puts "Adicionando avaliador225 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador225, coordenador: false)

puts "Criando usuário cristiane_nascimento_fernandes@outlook.com"
avaliador226 = Usuario.create(nome: 'Cristiane do Nascimento Fernandes', email: 'cristiane_nascimento_fernandes@outlook.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador226 = Organizador.create(usuario: avaliador226)
puts "Adicionando avaliador226 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador226, coordenador: false)
puts "Adicionando avaliador226 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador226, coordenador: false)
puts "Adicionando avaliador226 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador226, coordenador: false)

puts "Criando usuário damiaoneto222@gmail.com"
avaliador227 = Usuario.create(nome: 'Damião Ferreira da Silva Neto', email: 'damiaoneto222@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador227 = Organizador.create(usuario: avaliador227)
puts "Adicionando avaliador227 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador227, coordenador: false)
puts "Adicionando avaliador227 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador227, coordenador: false)
puts "Adicionando avaliador227 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador227, coordenador: false)
puts "Adicionando avaliador227 a linha linha_congic_engenharia_agricola"
Membro.create(linha: linha_congic_engenharia_agricola, organizador: avaliador227, coordenador: false)
puts "Adicionando avaliador227 a linha linha_congic_recursos_florestais_engenharia_florestal"
Membro.create(linha: linha_congic_recursos_florestais_engenharia_florestal, organizador: avaliador227, coordenador: false)
puts "Adicionando avaliador227 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador227, coordenador: false)

puts "Criando usuário danielaksx@hotmail.com"
avaliador228 = Usuario.create(nome: 'DANIELA KARLA DE SOUZA XAVIER', email: 'danielaksx@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador228 = Organizador.create(usuario: avaliador228)
puts "Adicionando avaliador228 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador228, coordenador: false)
puts "Adicionando avaliador228 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador228, coordenador: false)
puts "Adicionando avaliador228 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador228, coordenador: false)
puts "Adicionando avaliador228 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador228, coordenador: false)

puts "Criando usuário uchoa.danielle@gmail.com"
avaliador229 = Usuario.create(nome: 'Danielle Novais Uchôa', email: 'uchoa.danielle@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador229 = Organizador.create(usuario: avaliador229)
puts "Adicionando avaliador229 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador229, coordenador: false)
puts "Adicionando avaliador229 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador229, coordenador: false)
puts "Adicionando avaliador229 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador229, coordenador: false)

puts "Criando usuário danilo.souza@ifrn.edu.br"
avaliador230 = Usuario.create(nome: 'DANILO DE SOUZA', email: 'danilo.souza@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador230 = Organizador.create(usuario: avaliador230)
puts "Adicionando avaliador230 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador230, coordenador: false)
puts "Adicionando avaliador230 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador230, coordenador: false)

puts "Criando usuário galvao.lennon@ifrn.edu.br"
avaliador231 = Usuario.create(nome: 'Deickson Lennon Galvão de Souza', email: 'galvao.lennon@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador231 = Organizador.create(usuario: avaliador231)
puts "Adicionando avaliador231 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador231, coordenador: false)
puts "Adicionando avaliador231 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador231, coordenador: false)
puts "Adicionando avaliador231 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador231, coordenador: false)

puts "Criando usuário djalma.neto@ifrn.edu.br"
avaliador232 = Usuario.create(nome: 'Djalma Valerio Ribeiro Neto', email: 'djalma.neto@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador232 = Organizador.create(usuario: avaliador232)
puts "Adicionando avaliador232 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador232, coordenador: false)
puts "Adicionando avaliador232 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador232, coordenador: false)
puts "Adicionando avaliador232 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador232, coordenador: false)
puts "Adicionando avaliador232 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador232, coordenador: false)

puts "Criando usuário edilberto.borja@ifrn.edu.br"
avaliador233 = Usuario.create(nome: 'Edilberto Vitorino de Borja', email: 'edilberto.borja@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador233 = Organizador.create(usuario: avaliador233)
puts "Adicionando avaliador233 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador233, coordenador: false)

puts "Criando usuário edjanemikaelly@hotmail.com"
avaliador234 = Usuario.create(nome: 'Edjane Mikaelly Silva de Azevedo', email: 'edjanemikaelly@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador234 = Organizador.create(usuario: avaliador234)
puts "Adicionando avaliador234 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador234, coordenador: false)
puts "Adicionando avaliador234 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador234, coordenador: false)

puts "Criando usuário eliane_gyn@brturbo.com.br"
avaliador235 = Usuario.create(nome: 'Eliane Auxiliadora Pereira', email: 'eliane_gyn@brturbo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador235 = Organizador.create(usuario: avaliador235)
puts "Adicionando avaliador235 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador235, coordenador: false)
puts "Adicionando avaliador235 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador235, coordenador: false)
puts "Adicionando avaliador235 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador235, coordenador: false)

puts "Procurando usuário elizomar.nobre@ifrn.edu.br"
avaliador236 = Usuario.find_by(email: 'elizomar.nobre@ifrn.edu.br')
avaliador236 = Organizador.find_by(usuario: avaliador236)
puts "Adicionando avaliador236 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador236, coordenador: false)

puts "Criando usuário elmarjunior12@gmail.com"
avaliador237 = Usuario.create(nome: 'Elmar Damasceno Junior', email: 'elmarjunior12@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador237 = Organizador.create(usuario: avaliador237)
puts "Adicionando avaliador237 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador237, coordenador: false)
puts "Adicionando avaliador237 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador237, coordenador: false)

puts "Criando usuário elvismedeiros.mm@gmail.com"
avaliador238 = Usuario.create(nome: 'Elvis Medeiros de Melo', email: 'elvismedeiros.mm@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador238 = Organizador.create(usuario: avaliador238)
puts "Adicionando avaliador238 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador238, coordenador: false)
puts "Adicionando avaliador238 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador238, coordenador: false)
puts "Adicionando avaliador238 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador238, coordenador: false)

puts "Criando usuário erikacristinaeq@yahoo.com.br"
avaliador239 = Usuario.create(nome: 'Erika Cristina Lourenço de Oliveira', email: 'erikacristinaeq@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador239 = Organizador.create(usuario: avaliador239)
puts "Adicionando avaliador239 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador239, coordenador: false)
puts "Adicionando avaliador239 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador239, coordenador: false)

puts "Criando usuário euza.raquel@ifrn.edu.br"
avaliador240 = Usuario.create(nome: 'Euza Raquel de Sousa', email: 'euza.raquel@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador240 = Organizador.create(usuario: avaliador240)
puts "Adicionando avaliador240 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador240, coordenador: false)

puts "Criando usuário evalidiaml@hotmail.com"
avaliador241 = Usuario.create(nome: 'Eva Lídia Maniçoba de Lima', email: 'evalidiaml@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador241 = Organizador.create(usuario: avaliador241)
puts "Adicionando avaliador241 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador241, coordenador: false)

puts "Criando usuário fabio.garcia@ifrn.edu.br"
avaliador242 = Usuario.create(nome: 'Fabio Garcia Penha', email: 'fabio.garcia@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador242 = Organizador.create(usuario: avaliador242)
puts "Adicionando avaliador242 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador242, coordenador: false)

puts "Criando usuário felipe.alves.paulo@gmail.com"
avaliador243 = Usuario.create(nome: 'Felipe Alves Paulo Cavalcanti', email: 'felipe.alves.paulo@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador243 = Organizador.create(usuario: avaliador243)
puts "Adicionando avaliador243 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador243, coordenador: false)

puts "Criando usuário felipe.lima@ifrn.edu.br"
avaliador244 = Usuario.create(nome: 'Felipe Arthur Sabino Araújo Lima', email: 'felipe.lima@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador244 = Organizador.create(usuario: avaliador244)
puts "Adicionando avaliador244 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador244, coordenador: false)

puts "Criando usuário flanelsonifba@gmail.com"
avaliador245 = Usuario.create(nome: 'Flanelson Maciel Monteiro', email: 'flanelsonifba@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador245 = Organizador.create(usuario: avaliador245)
puts "Adicionando avaliador245 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador245, coordenador: false)
puts "Adicionando avaliador245 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador245, coordenador: false)

puts "Criando usuário fjamille@hotmail.com"
avaliador246 = Usuario.create(nome: 'FLÁVIA JAMILLE DE FIGUEIREDO PAES BARRETTO', email: 'fjamille@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador246 = Organizador.create(usuario: avaliador246)
puts "Adicionando avaliador246 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador246, coordenador: false)

puts "Criando usuário natalia_silva_18@hotmail.com"
avaliador247 = Usuario.create(nome: 'FRANCISCA NATALIA DA SILVA', email: 'natalia_silva_18@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador247 = Organizador.create(usuario: avaliador247)
puts "Adicionando avaliador247 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador247, coordenador: false)
puts "Adicionando avaliador247 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador247, coordenador: false)
puts "Adicionando avaliador247 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador247, coordenador: false)

puts "Criando usuário francisco.souza@ifrn.edu.br"
avaliador248 = Usuario.create(nome: 'Francisco das Chagas Souza Júnior', email: 'francisco.souza@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador248 = Organizador.create(usuario: avaliador248)
puts "Adicionando avaliador248 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador248, coordenador: false)
puts "Adicionando avaliador248 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador248, coordenador: false)

puts "Criando usuário genivan@gmail.com"
avaliador249 = Usuario.create(nome: 'Francisco Genivan Silva', email: 'genivan@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador249 = Organizador.create(usuario: avaliador249)
puts "Adicionando avaliador249 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador249, coordenador: false)

puts "Criando usuário francival007@gmail.com"
avaliador250 = Usuario.create(nome: 'Francival Cardoso Félix', email: 'francival007@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador250 = Organizador.create(usuario: avaliador250)
puts "Adicionando avaliador250 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador250, coordenador: false)
puts "Adicionando avaliador250 a linha linha_congic_recursos_florestais_engenharia_florestal"
Membro.create(linha: linha_congic_recursos_florestais_engenharia_florestal, organizador: avaliador250, coordenador: false)

puts "Criando usuário gilmara.freire@ifrn.edu.br"
avaliador251 = Usuario.create(nome: 'GILMARA FREIRE AZEVEDO', email: 'gilmara.freire@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador251 = Organizador.create(usuario: avaliador251)
puts "Adicionando avaliador251 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador251, coordenador: false)

puts "Criando usuário gregory_vinicios@hotmail.com"
avaliador252 = Usuario.create(nome: 'Gregory Vinicius Bezerra de Oliveira', email: 'gregory_vinicios@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador252 = Organizador.create(usuario: avaliador252)
puts "Adicionando avaliador252 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador252, coordenador: false)
puts "Adicionando avaliador252 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador252, coordenador: false)
puts "Adicionando avaliador252 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador252, coordenador: false)
puts "Adicionando avaliador252 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador252, coordenador: false)

puts "Criando usuário guilhermeddf@ppgsc.ufrn.br"
avaliador253 = Usuario.create(nome: 'Guilherme Dutra Diniz de Freitas', email: 'guilhermeddf@ppgsc.ufrn.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador253 = Organizador.create(usuario: avaliador253)
puts "Adicionando avaliador253 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador253, coordenador: false)

puts "Criando usuário guilherme.sachs@ifpr.edu.br"
avaliador254 = Usuario.create(nome: 'Guilherme Sachs', email: 'guilherme.sachs@ifpr.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador254 = Organizador.create(usuario: avaliador254)
puts "Adicionando avaliador254 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador254, coordenador: false)
puts "Adicionando avaliador254 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador254, coordenador: false)
puts "Adicionando avaliador254 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador254, coordenador: false)
puts "Adicionando avaliador254 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador254, coordenador: false)
puts "Adicionando avaliador254 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador254, coordenador: false)

puts "Criando usuário gustavo.brito@ifrn.edu.br"
avaliador255 = Usuario.create(nome: 'Gustavo André Pereira de Brito', email: 'gustavo.brito@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador255 = Organizador.create(usuario: avaliador255)
puts "Adicionando avaliador255 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador255, coordenador: false)
puts "Adicionando avaliador255 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador255, coordenador: false)
puts "Adicionando avaliador255 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador255, coordenador: false)
puts "Adicionando avaliador255 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador255, coordenador: false)
puts "Adicionando avaliador255 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador255, coordenador: false)

puts "Criando usuário gu_spanic@hotmail.com"
avaliador256 = Usuario.create(nome: 'Gutenbergue Viana da Silva', email: 'gu_spanic@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador256 = Organizador.create(usuario: avaliador256)
puts "Adicionando avaliador256 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador256, coordenador: false)
puts "Adicionando avaliador256 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador256, coordenador: false)

puts "Criando usuário iasmim.soares@hotmail.com"
avaliador257 = Usuario.create(nome: 'Iasmim Maria Soares dos Santos', email: 'iasmim.soares@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador257 = Organizador.create(usuario: avaliador257)
puts "Adicionando avaliador257 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador257, coordenador: false)
puts "Adicionando avaliador257 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador257, coordenador: false)

puts "Criando usuário israelamiriam@hotmail.com"
avaliador258 = Usuario.create(nome: 'Israela Míriam de Melo', email: 'israelamiriam@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador258 = Organizador.create(usuario: avaliador258)
puts "Adicionando avaliador258 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador258, coordenador: false)

puts "Criando usuário ivamasullo@hotmail.com"
avaliador259 = Usuario.create(nome: 'Ivanilda Maria Freire', email: 'ivamasullo@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador259 = Organizador.create(usuario: avaliador259)
puts "Adicionando avaliador259 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador259, coordenador: false)
puts "Adicionando avaliador259 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador259, coordenador: false)

puts "Criando usuário jandara.aassis@gmail.com"
avaliador260 = Usuario.create(nome: 'Jandara Assis de Oliveira Andrade', email: 'jandara.aassis@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador260 = Organizador.create(usuario: avaliador260)
puts "Adicionando avaliador260 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador260, coordenador: false)
puts "Adicionando avaliador260 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador260, coordenador: false)
puts "Adicionando avaliador260 a linha linha_congic_servico_social"
Membro.create(linha: linha_congic_servico_social, organizador: avaliador260, coordenador: false)
puts "Adicionando avaliador260 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador260, coordenador: false)
puts "Adicionando avaliador260 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador260, coordenador: false)
puts "Adicionando avaliador260 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador260, coordenador: false)
puts "Adicionando avaliador260 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador260, coordenador: false)
puts "Adicionando avaliador260 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador260, coordenador: false)

puts "Criando usuário jarley.nascimento@ifrn.edu.br"
avaliador261 = Usuario.create(nome: 'Jarley Nascimento', email: 'jarley.nascimento@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador261 = Organizador.create(usuario: avaliador261)
puts "Adicionando avaliador261 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador261, coordenador: false)

puts "Criando usuário joaildomaia@hotmail.com"
avaliador262 = Usuario.create(nome: 'Joaildo Maia', email: 'joaildomaia@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador262 = Organizador.create(usuario: avaliador262)
puts "Adicionando avaliador262 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador262, coordenador: false)
puts "Adicionando avaliador262 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador262, coordenador: false)

puts "Criando usuário kaio-ca-valcante@hotmail.com"
avaliador263 = Usuario.create(nome: 'João Kaio Cavalcante de Morais ', email: 'kaio-ca-valcante@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador263 = Organizador.create(usuario: avaliador263)
puts "Adicionando avaliador263 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador263, coordenador: false)
puts "Adicionando avaliador263 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador263, coordenador: false)
puts "Adicionando avaliador263 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador263, coordenador: false)
puts "Adicionando avaliador263 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador263, coordenador: false)
puts "Adicionando avaliador263 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador263, coordenador: false)
puts "Adicionando avaliador263 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador263, coordenador: false)

puts "Criando usuário joao.queiroz@ifrn.edu.br"
avaliador264 = Usuario.create(nome: 'João Paulo Queiroz dos Santos', email: 'joao.queiroz@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador264 = Organizador.create(usuario: avaliador264)
puts "Adicionando avaliador264 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador264, coordenador: false)
puts "Adicionando avaliador264 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador264, coordenador: false)

puts "Criando usuário joaovidalrn@hotmail.com"
avaliador265 = Usuario.create(nome: 'JOÃO VIDAL DE SOUZA NETO', email: 'joaovidalrn@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador265 = Organizador.create(usuario: avaliador265)
puts "Adicionando avaliador265 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador265, coordenador: false)
puts "Adicionando avaliador265 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador265, coordenador: false)
puts "Adicionando avaliador265 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador265, coordenador: false)

puts "Criando usuário jonas.almada@ifce.edu.br"
avaliador266 = Usuario.create(nome: 'JONAS LUIZ ALMADA DA SILVA', email: 'jonas.almada@ifce.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador266 = Organizador.create(usuario: avaliador266)
puts "Adicionando avaliador266 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador266, coordenador: false)
puts "Adicionando avaliador266 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador266, coordenador: false)

puts "Criando usuário muller.jonas@hotmail.com.br"
avaliador267 = Usuario.create(nome: 'JONAS RODRIGO DA SILVA SOUSA', email: 'muller.jonas@hotmail.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador267 = Organizador.create(usuario: avaliador267)
puts "Adicionando avaliador267 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador267, coordenador: false)

puts "Criando usuário magnaldo.araujjo@ifrn.edu.br"
avaliador268 = Usuario.create(nome: 'José Magnaldo de Moura Araújo', email: 'magnaldo.araujjo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador268 = Organizador.create(usuario: avaliador268)
puts "Adicionando avaliador268 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador268, coordenador: false)
puts "Adicionando avaliador268 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador268, coordenador: false)


puts "Criando usuário jyp.leite@ifrn.edu.br"
avaliador270 = Usuario.create(nome: 'José Yvan Pereira Leite', email: 'jyp.leite@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador270 = Organizador.create(usuario: avaliador270)
puts "Adicionando avaliador270 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador270, coordenador: false)

puts "Criando usuário juanfflorencio@gmail.com"
avaliador271 = Usuario.create(nome: 'Juan Dos Santos Silva', email: 'juanfflorencio@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador271 = Organizador.create(usuario: avaliador271)
puts "Adicionando avaliador271 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador271, coordenador: false)
puts "Adicionando avaliador271 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador271, coordenador: false)
puts "Adicionando avaliador271 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador271, coordenador: false)

puts "Criando usuário julisg@live.com"
avaliador272 = Usuario.create(nome: 'Julimar da Silva Gonçalves', email: 'julisg@live.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador272 = Organizador.create(usuario: avaliador272)
puts "Adicionando avaliador272 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador272, coordenador: false)
puts "Adicionando avaliador272 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador272, coordenador: false)
puts "Adicionando avaliador272 a linha linha_congic_servico_social"
Membro.create(linha: linha_congic_servico_social, organizador: avaliador272, coordenador: false)
puts "Adicionando avaliador272 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador272, coordenador: false)
puts "Adicionando avaliador272 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador272, coordenador: false)

puts "Criando usuário julyenne.lima@gmail.com"
avaliador273 = Usuario.create(nome: 'JULYENNE KEROLAINY LEITE LIMA', email: 'julyenne.lima@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador273 = Organizador.create(usuario: avaliador273)
puts "Adicionando avaliador273 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador273, coordenador: false)
puts "Adicionando avaliador273 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador273, coordenador: false)

puts "Criando usuário karlosthadeu@gmail.com"
avaliador274 = Usuario.create(nome: 'Karlos Thadeu Matias Vital de Oliveira', email: 'karlosthadeu@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador274 = Organizador.create(usuario: avaliador274)
puts "Adicionando avaliador274 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador274, coordenador: false)

puts "Criando usuário eyglys.araujo@ifrn.edu.br"
avaliador275 = Usuario.create(nome: 'Keylly Eyglys Araújo dos Santos', email: 'eyglys.araujo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador275 = Organizador.create(usuario: avaliador275)
puts "Adicionando avaliador275 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador275, coordenador: false)
puts "Adicionando avaliador275 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador275, coordenador: false)

puts "Criando usuário kleberluiz.ufs@gmail.com"
avaliador276 = Usuario.create(nome: 'Kleber Luiz Gavião Machado de Souza', email: 'kleberluiz.ufs@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador276 = Organizador.create(usuario: avaliador276)
puts "Adicionando avaliador276 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador276, coordenador: false)
puts "Adicionando avaliador276 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador276, coordenador: false)

puts "Criando usuário lais.correia@ifrn.edu.br"
avaliador277 = Usuario.create(nome: 'Laís Ariane Martins Barbosa Correia', email: 'lais.correia@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador277 = Organizador.create(usuario: avaliador277)
puts "Adicionando avaliador277 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador277, coordenador: false)
puts "Adicionando avaliador277 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador277, coordenador: false)
puts "Adicionando avaliador277 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador277, coordenador: false)


puts "Criando usuário laura.rampazzo@ifsp.edu.br"
avaliador279 = Usuario.create(nome: 'Laura Rampazzo', email: 'laura.rampazzo@ifsp.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador279 = Organizador.create(usuario: avaliador279)
puts "Adicionando avaliador279 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador279, coordenador: false)
puts "Adicionando avaliador279 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador279, coordenador: false)

puts "Criando usuário laysi_araujo@hotmail.com"
avaliador280 = Usuario.create(nome: 'Laysi Araújo da Silva', email: 'laysi_araujo@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador280 = Organizador.create(usuario: avaliador280)
puts "Adicionando avaliador280 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador280, coordenador: false)
puts "Adicionando avaliador280 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador280, coordenador: false)
puts "Adicionando avaliador280 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador280, coordenador: false)
puts "Adicionando avaliador280 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador280, coordenador: false)
puts "Adicionando avaliador280 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador280, coordenador: false)
puts "Adicionando avaliador280 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador280, coordenador: false)

puts "Criando usuário leandro.luttiane@ifrn.edu.br"
avaliador281 = Usuario.create(nome: 'Leandro Luttiane da Silva Linhares', email: 'leandro.luttiane@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador281 = Organizador.create(usuario: avaliador281)
puts "Adicionando avaliador281 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador281, coordenador: false)
puts "Adicionando avaliador281 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador281, coordenador: false)

puts "Criando usuário lidiane.alves06@gmail.com"
avaliador282 = Usuario.create(nome: 'LIDIANE ALVES DE MORAIS', email: 'lidiane.alves06@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador282 = Organizador.create(usuario: avaliador282)
puts "Adicionando avaliador282 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador282, coordenador: false)
puts "Adicionando avaliador282 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador282, coordenador: false)

puts "Criando usuário ligia.gonzaga@ifrn.edu.br"
avaliador283 = Usuario.create(nome: 'Ligia Mara Gonzaga', email: 'ligia.gonzaga@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador283 = Organizador.create(usuario: avaliador283)
puts "Adicionando avaliador283 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador283, coordenador: false)
puts "Adicionando avaliador283 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador283, coordenador: false)

puts "Criando usuário luan.oliveira@ifpb.edu.br"
avaliador284 = Usuario.create(nome: 'Luan Carvalho santana de Oliveira', email: 'luan.oliveira@ifpb.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador284 = Organizador.create(usuario: avaliador284)
puts "Adicionando avaliador284 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_engenharia_minas"
Membro.create(linha: linha_congic_engenharia_minas, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador284, coordenador: false)
puts "Adicionando avaliador284 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador284, coordenador: false)

puts "Criando usuário lucas_ramosjp@hotmail.com"
avaliador285 = Usuario.create(nome: 'Lucas Ramos da Costa', email: 'lucas_ramosjp@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador285 = Organizador.create(usuario: avaliador285)
puts "Adicionando avaliador285 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador285, coordenador: false)
puts "Adicionando avaliador285 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador285, coordenador: false)
puts "Adicionando avaliador285 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador285, coordenador: false)
puts "Adicionando avaliador285 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador285, coordenador: false)
puts "Adicionando avaliador285 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador285, coordenador: false)


puts "Criando usuário luciana.rabelo@ifrn.edu.br"
avaliador287 = Usuario.create(nome: 'Luciana Maria Araújo Rabêlo', email: 'luciana.rabelo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador287 = Organizador.create(usuario: avaliador287)
puts "Adicionando avaliador287 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador287, coordenador: false)
puts "Adicionando avaliador287 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador287, coordenador: false)
puts "Adicionando avaliador287 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador287, coordenador: false)
puts "Adicionando avaliador287 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador287, coordenador: false)
puts "Adicionando avaliador287 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador287, coordenador: false)

puts "Criando usuário luciano.cipriano88@gmail.com"
avaliador288 = Usuario.create(nome: 'Luciano Cipriano da Silva', email: 'luciano.cipriano88@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador288 = Organizador.create(usuario: avaliador288)
puts "Adicionando avaliador288 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador288, coordenador: false)


puts "Criando usuário lucileide.dantas@ifrn.edu.br"
avaliador290 = Usuario.create(nome: 'Lucileide Medeiros Dantas da Silva', email: 'lucileide.dantas@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador290 = Organizador.create(usuario: avaliador290)
puts "Adicionando avaliador290 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador290, coordenador: false)

puts "Criando usuário lucimar.f@hotmail.com"
avaliador291 = Usuario.create(nome: 'Lucimar Fernandes de Lima', email: 'lucimar.f@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador291 = Organizador.create(usuario: avaliador291)
puts "Adicionando avaliador291 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador291, coordenador: false)
puts "Adicionando avaliador291 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador291, coordenador: false)

puts "Criando usuário maikon.maia@ifrn.edu.br"
avaliador292 = Usuario.create(nome: 'Maikon Moises de Oliveira Maia', email: 'maikon.maia@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador292 = Organizador.create(usuario: avaliador292)
puts "Adicionando avaliador292 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador292, coordenador: false)

puts "Criando usuário marcela.silva@ifrn.edu.br"
avaliador293 = Usuario.create(nome: 'Marcela Gomes da Silva', email: 'marcela.silva@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador293 = Organizador.create(usuario: avaliador293)
puts "Adicionando avaliador293 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador293, coordenador: false)
puts "Adicionando avaliador293 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador293, coordenador: false)
puts "Adicionando avaliador293 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador293, coordenador: false)
puts "Adicionando avaliador293 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador293, coordenador: false)
puts "Adicionando avaliador293 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador293, coordenador: false)
puts "Adicionando avaliador293 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador293, coordenador: false)
puts "Adicionando avaliador293 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador293, coordenador: false)

puts "Criando usuário marcelo.oliveira@ifms.edu.br"
avaliador294 = Usuario.create(nome: 'Marcelo de Oliveira', email: 'marcelo.oliveira@ifms.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador294 = Organizador.create(usuario: avaliador294)
puts "Adicionando avaliador294 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador294, coordenador: false)

puts "Criando usuário marcia.dantas@ifrn.edu.br"
avaliador295 = Usuario.create(nome: 'Márcia Maria Avelino Dantas', email: 'marcia.dantas@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador295 = Organizador.create(usuario: avaliador295)
puts "Adicionando avaliador295 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador295, coordenador: false)
puts "Adicionando avaliador295 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador295, coordenador: false)
puts "Adicionando avaliador295 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador295, coordenador: false)
puts "Adicionando avaliador295 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador295, coordenador: false)
puts "Adicionando avaliador295 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador295, coordenador: false)

puts "Criando usuário marciarluiz@yahoo.com.br"
avaliador296 = Usuario.create(nome: 'Marcia Ramos Luiz', email: 'marciarluiz@yahoo.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador296 = Organizador.create(usuario: avaliador296)
puts "Adicionando avaliador296 a linha linha_congic_engenharia_materiais_metalurgica"
Membro.create(linha: linha_congic_engenharia_materiais_metalurgica, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador296, coordenador: false)
puts "Adicionando avaliador296 a linha linha_congic_engenharia_agricola"
Membro.create(linha: linha_congic_engenharia_agricola, organizador: avaliador296, coordenador: false)

puts "Criando usuário marcio.bezerra@ifrn.edu.br"
avaliador297 = Usuario.create(nome: 'Márcio Silva Bezerra', email: 'marcio.bezerra@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador297 = Organizador.create(usuario: avaliador297)
puts "Adicionando avaliador297 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador297, coordenador: false)
puts "Adicionando avaliador297 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador297, coordenador: false)
puts "Adicionando avaliador297 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador297, coordenador: false)
puts "Adicionando avaliador297 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador297, coordenador: false)
puts "Adicionando avaliador297 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador297, coordenador: false)
puts "Adicionando avaliador297 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador297, coordenador: false)
puts "Adicionando avaliador297 a linha linha_congic_engenharia_agricola"
Membro.create(linha: linha_congic_engenharia_agricola, organizador: avaliador297, coordenador: false)

puts "Criando usuário nilaof@gmail.com"
avaliador298 = Usuario.create(nome: 'Marcionila de Oliveira Ferreira ', email: 'nilaof@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador298 = Organizador.create(usuario: avaliador298)
puts "Adicionando avaliador298 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador298, coordenador: false)
puts "Adicionando avaliador298 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador298, coordenador: false)
puts "Adicionando avaliador298 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador298, coordenador: false)

puts "Criando usuário marcos.oliveira@ifrn.edu.br"
avaliador299 = Usuario.create(nome: 'Marcos Antônio de Oliveira', email: 'marcos.oliveira@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador299 = Organizador.create(usuario: avaliador299)
puts "Adicionando avaliador299 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador299, coordenador: false)
puts "Adicionando avaliador299 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador299, coordenador: false)
puts "Adicionando avaliador299 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador299, coordenador: false)
puts "Adicionando avaliador299 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador299, coordenador: false)

puts "Criando usuário socorromarya@gmail.com"
avaliador300 = Usuario.create(nome: 'Maria do Socorro Bezerra da Silva', email: 'socorromarya@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador300 = Organizador.create(usuario: avaliador300)
puts "Adicionando avaliador300 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador300, coordenador: false)
puts "Adicionando avaliador300 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador300, coordenador: false)

puts "Criando usuário msmcunha@gmail.com"
avaliador301 = Usuario.create(nome: 'MARIA DO SOCORRO MARIANO DA CUNHA', email: 'msmcunha@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador301 = Organizador.create(usuario: avaliador301)
puts "Adicionando avaliador301 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador301, coordenador: false)
puts "Adicionando avaliador301 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador301, coordenador: false)
puts "Adicionando avaliador301 a linha linha_congic_biofisica"
Membro.create(linha: linha_congic_biofisica, organizador: avaliador301, coordenador: false)
puts "Adicionando avaliador301 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador301, coordenador: false)
puts "Adicionando avaliador301 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador301, coordenador: false)
puts "Adicionando avaliador301 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador301, coordenador: false)
puts "Adicionando avaliador301 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador301, coordenador: false)
puts "Adicionando avaliador301 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador301, coordenador: false)
puts "Adicionando avaliador301 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador301, coordenador: false)

puts "Criando usuário elizabeth55_@hotmail.com"
avaliador302 = Usuario.create(nome: 'Maria Elizabeth da Costa Felipe Santiago', email: 'elizabeth55_@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador302 = Organizador.create(usuario: avaliador302)
puts "Adicionando avaliador302 a linha linha_congic_enfermagem"
Membro.create(linha: linha_congic_enfermagem, organizador: avaliador302, coordenador: false)
puts "Adicionando avaliador302 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador302, coordenador: false)
puts "Adicionando avaliador302 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador302, coordenador: false)

puts "Criando usuário jahynne.dantas@ifrn.edu.br"
avaliador303 = Usuario.create(nome: 'Maria Jahynne Dantas dos Santos', email: 'jahynne.dantas@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador303 = Organizador.create(usuario: avaliador303)
puts "Adicionando avaliador303 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador303, coordenador: false)

puts "Criando usuário mariana.dias@ifrn.edu.br"
avaliador304 = Usuario.create(nome: 'Mariana Dias Leite', email: 'mariana.dias@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador304 = Organizador.create(usuario: avaliador304)
puts "Adicionando avaliador304 a linha linha_congic_biofisica"
Membro.create(linha: linha_congic_biofisica, organizador: avaliador304, coordenador: false)
puts "Adicionando avaliador304 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador304, coordenador: false)
puts "Adicionando avaliador304 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador304, coordenador: false)
puts "Adicionando avaliador304 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador304, coordenador: false)
puts "Adicionando avaliador304 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador304, coordenador: false)
puts "Adicionando avaliador304 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador304, coordenador: false)

puts "Criando usuário marilson.mineiro@ifrn.edu.br"
avaliador305 = Usuario.create(nome: 'Marilson Donizetti Silvino ', email: 'marilson.mineiro@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador305 = Organizador.create(usuario: avaliador305)
puts "Adicionando avaliador305 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador305, coordenador: false)
puts "Adicionando avaliador305 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador305, coordenador: false)
puts "Adicionando avaliador305 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador305, coordenador: false)
puts "Adicionando avaliador305 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador305, coordenador: false)

puts "Criando usuário profmartacp2@gmail.com"
avaliador306 = Usuario.create(nome: 'Marta Rodrigues', email: 'profmartacp2@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador306 = Organizador.create(usuario: avaliador306)
puts "Adicionando avaliador306 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador306, coordenador: false)
puts "Adicionando avaliador306 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador306, coordenador: false)
puts "Adicionando avaliador306 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador306, coordenador: false)

puts "Criando usuário meire.celedonio@ifrn.edu.br"
avaliador307 = Usuario.create(nome: 'Meire Celedonio da Silva', email: 'meire.celedonio@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador307 = Organizador.create(usuario: avaliador307)
puts "Adicionando avaliador307 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador307, coordenador: false)
puts "Adicionando avaliador307 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador307, coordenador: false)
puts "Adicionando avaliador307 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador307, coordenador: false)
puts "Adicionando avaliador307 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador307, coordenador: false)

puts "Criando usuário miqueiasgeo@gmail.com"
avaliador308 = Usuario.create(nome: 'Miqueias Virginio da Silva', email: 'miqueiasgeo@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador308 = Organizador.create(usuario: avaliador308)
puts "Adicionando avaliador308 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador308, coordenador: false)
puts "Adicionando avaliador308 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador308, coordenador: false)
puts "Adicionando avaliador308 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador308, coordenador: false)
puts "Adicionando avaliador308 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador308, coordenador: false)

puts "Criando usuário monica_limap@hotmail.com"
avaliador309 = Usuario.create(nome: 'Mônica de Lima Pereira', email: 'monica_limap@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador309 = Organizador.create(usuario: avaliador309)
puts "Adicionando avaliador309 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador309, coordenador: false)
puts "Adicionando avaliador309 a linha linha_congic_educacao_fisica"
Membro.create(linha: linha_congic_educacao_fisica, organizador: avaliador309, coordenador: false)

puts "Criando usuário monicabritosaa@gmail.com"
avaliador310 = Usuario.create(nome: 'Mônica Sebastiana Brito de Sá ', email: 'monicabritosaa@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador310 = Organizador.create(usuario: avaliador310)
puts "Adicionando avaliador310 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador310, coordenador: false)
puts "Adicionando avaliador310 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador310, coordenador: false)
puts "Adicionando avaliador310 a linha linha_congic_geografia"
Membro.create(linha: linha_congic_geografia, organizador: avaliador310, coordenador: false)

puts "Criando usuário morganamelo10@gmail.com"
avaliador311 = Usuario.create(nome: 'Morgana Léa Melo Brilhante', email: 'morganamelo10@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador311 = Organizador.create(usuario: avaliador311)
puts "Adicionando avaliador311 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador311, coordenador: false)

puts "Procurando usuário nadir.arruda@ifrn.edu.br"
avaliador312 = Usuario.find_by(email: 'nadir.arruda@ifrn.edu.br')
avaliador312 = Organizador.find_by(usuario: avaliador312)
puts "Adicionando avaliador312 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador312, coordenador: false)

puts "Criando usuário nathalia.araujo@ifrn.edu.br"
avaliador313 = Usuario.create(nome: 'Nathália Kelly de Araújo', email: 'nathalia.araujo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador313 = Organizador.create(usuario: avaliador313)
puts "Adicionando avaliador313 a linha linha_congic_engenharia_quimica"
Membro.create(linha: linha_congic_engenharia_quimica, organizador: avaliador313, coordenador: false)
puts "Adicionando avaliador313 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador313, coordenador: false)
puts "Adicionando avaliador313 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador313, coordenador: false)
puts "Adicionando avaliador313 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador313, coordenador: false)

puts "Criando usuário neilson.lima@ifrn.edu.br"
avaliador314 = Usuario.create(nome: 'Neilson Ferreira de Lima', email: 'neilson.lima@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador314 = Organizador.create(usuario: avaliador314)
puts "Adicionando avaliador314 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador314, coordenador: false)

puts "Criando usuário maccchipaloma@hotmail.com"
avaliador315 = Usuario.create(nome: 'Paloma de Matos Macchi', email: 'maccchipaloma@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador315 = Organizador.create(usuario: avaliador315)
puts "Adicionando avaliador315 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador315, coordenador: false)
puts "Adicionando avaliador315 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador315, coordenador: false)
puts "Adicionando avaliador315 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador315, coordenador: false)
puts "Adicionando avaliador315 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador315, coordenador: false)
puts "Adicionando avaliador315 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador315, coordenador: false)

puts "Criando usuário patricia.pinheiro@ifap.edu.br"
avaliador316 = Usuario.create(nome: 'Patricia Camile Monteiro Pinheiro', email: 'patricia.pinheiro@ifap.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador316 = Organizador.create(usuario: avaliador316)
puts "Adicionando avaliador316 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador316, coordenador: false)
puts "Adicionando avaliador316 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador316, coordenador: false)

puts "Criando usuário paulo.douglas.lima@fisica.ufrn.br"
avaliador317 = Usuario.create(nome: 'Paulo Douglas Santos de Lima', email: 'paulo.douglas.lima@fisica.ufrn.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador317 = Organizador.create(usuario: avaliador317)
puts "Adicionando avaliador317 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador317, coordenador: false)
puts "Adicionando avaliador317 a linha linha_congic_astronomia"
Membro.create(linha: linha_congic_astronomia, organizador: avaliador317, coordenador: false)
puts "Adicionando avaliador317 a linha linha_congic_fisica"
Membro.create(linha: linha_congic_fisica, organizador: avaliador317, coordenador: false)
puts "Adicionando avaliador317 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador317, coordenador: false)
puts "Adicionando avaliador317 a linha linha_congic_quimica"
Membro.create(linha: linha_congic_quimica, organizador: avaliador317, coordenador: false)
puts "Adicionando avaliador317 a linha linha_congic_biofisica"
Membro.create(linha: linha_congic_biofisica, organizador: avaliador317, coordenador: false)

puts "Criando usuário paulo.cunha@ifap.edu.br"
avaliador318 = Usuario.create(nome: 'PAULO ROBSON PEREIRA DA CUNHA', email: 'paulo.cunha@ifap.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador318 = Organizador.create(usuario: avaliador318)
puts "Adicionando avaliador318 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador318, coordenador: false)
puts "Adicionando avaliador318 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador318, coordenador: false)
puts "Adicionando avaliador318 a linha linha_congic_recursos_pesqueiros_engenharia_pesca"
Membro.create(linha: linha_congic_recursos_pesqueiros_engenharia_pesca, organizador: avaliador318, coordenador: false)
puts "Adicionando avaliador318 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador318, coordenador: false)


puts "Criando usuário rafael.moraes@ifrn.edu.br"
avaliador320 = Usuario.create(nome: 'Rafael Peixoto de Moraes Pereira', email: 'rafael.moraes@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador320 = Organizador.create(usuario: avaliador320)
puts "Adicionando avaliador320 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador320, coordenador: false)
puts "Adicionando avaliador320 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador320, coordenador: false)

puts "Criando usuário raquel.coelho@ifrn.edu.br"
avaliador321 = Usuario.create(nome: 'Raquel Macedo Dantas Coelho', email: 'raquel.coelho@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador321 = Organizador.create(usuario: avaliador321)
puts "Adicionando avaliador321 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador321, coordenador: false)

puts "Criando usuário renatocgadm@hotmail.com"
avaliador322 = Usuario.create(nome: 'Renato da Cunha Gomes', email: 'renatocgadm@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador322 = Organizador.create(usuario: avaliador322)
puts "Adicionando avaliador322 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador322, coordenador: false)
puts "Adicionando avaliador322 a linha linha_congic_turismo"
Membro.create(linha: linha_congic_turismo, organizador: avaliador322, coordenador: false)
puts "Adicionando avaliador322 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador322, coordenador: false)
puts "Adicionando avaliador322 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador322, coordenador: false)
puts "Adicionando avaliador322 a linha linha_congic_ciencias_tecnologia_alimentos"
Membro.create(linha: linha_congic_ciencias_tecnologia_alimentos, organizador: avaliador322, coordenador: false)

puts "Criando usuário robertacynthia@gmail.com"
avaliador323 = Usuario.create(nome: 'Roberta Cynthia Barbosa de Freitas', email: 'robertacynthia@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador323 = Organizador.create(usuario: avaliador323)
puts "Adicionando avaliador323 a linha linha_congic_servico_social"
Membro.create(linha: linha_congic_servico_social, organizador: avaliador323, coordenador: false)
puts "Adicionando avaliador323 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador323, coordenador: false)

puts "Criando usuário robson.oliveira@ifrn.edu.br"
avaliador324 = Usuario.create(nome: 'Robson Rafael de Oliveira', email: 'robson.oliveira@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador324 = Organizador.create(usuario: avaliador324)
puts "Adicionando avaliador324 a linha linha_congic_geociencias"
Membro.create(linha: linha_congic_geociencias, organizador: avaliador324, coordenador: false)

puts "Criando usuário rocco.nelson@ifrn.edu.br"
avaliador325 = Usuario.create(nome: 'Rocco Antonio Rangel Rosso Nelson', email: 'rocco.nelson@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador325 = Organizador.create(usuario: avaliador325)
puts "Adicionando avaliador325 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador325, coordenador: false)

puts "Criando usuário rodrigopaiva@bol.com.br"
avaliador326 = Usuario.create(nome: 'RODRIGO ANDERSON DE PAIVA', email: 'rodrigopaiva@bol.com.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador326 = Organizador.create(usuario: avaliador326)
puts "Adicionando avaliador326 a linha linha_congic_engenharia_producao"
Membro.create(linha: linha_congic_engenharia_producao, organizador: avaliador326, coordenador: false)
puts "Adicionando avaliador326 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador326, coordenador: false)
puts "Adicionando avaliador326 a linha linha_congic_engenharia_mecanica"
Membro.create(linha: linha_congic_engenharia_mecanica, organizador: avaliador326, coordenador: false)
puts "Adicionando avaliador326 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador326, coordenador: false)

puts "Criando usuário rodrigo.vidal@ifrn.edu.br"
avaliador327 = Usuario.create(nome: 'Rodrigo Vidal do Nascimento', email: 'rodrigo.vidal@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador327 = Organizador.create(usuario: avaliador327)
puts "Adicionando avaliador327 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador327, coordenador: false)

puts "Criando usuário romildo.oliveira@ifrn.edu.br"
avaliador328 = Usuario.create(nome: 'Romildo Oliveira Souza Júnior', email: 'romildo.oliveira@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador328 = Organizador.create(usuario: avaliador328)
puts "Adicionando avaliador328 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador328, coordenador: false)

puts "Criando usuário rosangela.silva@ifrn.edu.br"
avaliador329 = Usuario.create(nome: 'Rosângela Araújo da Silva', email: 'rosangela.silva@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador329 = Organizador.create(usuario: avaliador329)
puts "Adicionando avaliador329 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador329, coordenador: false)
puts "Adicionando avaliador329 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador329, coordenador: false)
puts "Adicionando avaliador329 a linha linha_congic_matematica"
Membro.create(linha: linha_congic_matematica, organizador: avaliador329, coordenador: false)

puts "Criando usuário roseaneidalino@gmail.com"
avaliador330 = Usuario.create(nome: 'ROSEANE IDALINO DA SILVA', email: 'roseaneidalino@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador330 = Organizador.create(usuario: avaliador330)
puts "Adicionando avaliador330 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador330, coordenador: false)

puts "Criando usuário saviorennan@gmail.com"
avaliador331 = Usuario.create(nome: 'SÁVIO RENNAN MENÊZES MELO', email: 'saviorennan@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador331 = Organizador.create(usuario: avaliador331)
puts "Adicionando avaliador331 a linha linha_congic_comunicacao"
Membro.create(linha: linha_congic_comunicacao, organizador: avaliador331, coordenador: false)
puts "Adicionando avaliador331 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador331, coordenador: false)

puts "Criando usuário silvana_sg_13@hotmail.com"
avaliador332 = Usuario.create(nome: 'Silvana Santana Gomes', email: 'silvana_sg_13@hotmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador332 = Organizador.create(usuario: avaliador332)
puts "Adicionando avaliador332 a linha linha_congic_engenharia_sanitaria"
Membro.create(linha: linha_congic_engenharia_sanitaria, organizador: avaliador332, coordenador: false)
puts "Adicionando avaliador332 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador332, coordenador: false)
puts "Adicionando avaliador332 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador332, coordenador: false)

puts "Criando usuário talita.massena@ifsertao-pe.edu.br"
avaliador333 = Usuario.create(nome: 'TALITA DE SOUZA MASSENA', email: 'talita.massena@ifsertao-pe.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador333 = Organizador.create(usuario: avaliador333)
puts "Adicionando avaliador333 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador333, coordenador: false)
puts "Adicionando avaliador333 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador333, coordenador: false)
puts "Adicionando avaliador333 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador333, coordenador: false)
puts "Adicionando avaliador333 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador333, coordenador: false)

puts "Criando usuário tatiane.almeida@ifrn.edu.br"
avaliador334 = Usuario.create(nome: 'Tatiane Nunes Viana de Almeida', email: 'tatiane.almeida@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador334 = Organizador.create(usuario: avaliador334)
puts "Adicionando avaliador334 a linha linha_congic_administracao"
Membro.create(linha: linha_congic_administracao, organizador: avaliador334, coordenador: false)

puts "Criando usuário thales.ramos@ifrn.edu.br"
avaliador335 = Usuario.create(nome: 'Thales Augusto de Oliveira Ramos', email: 'thales.ramos@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador335 = Organizador.create(usuario: avaliador335)
puts "Adicionando avaliador335 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador335, coordenador: false)

puts "Criando usuário thiagoalexxandre316@gmail.com"
avaliador336 = Usuario.create(nome: 'Thiago Alexandre Viana da Silva', email: 'thiagoalexxandre316@gmail.com', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador336 = Organizador.create(usuario: avaliador336)
puts "Adicionando avaliador336 a linha linha_congic_direito"
Membro.create(linha: linha_congic_direito, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_filosofia"
Membro.create(linha: linha_congic_filosofia, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_historia"
Membro.create(linha: linha_congic_historia, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_sociologia"
Membro.create(linha: linha_congic_sociologia, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_agronomia"
Membro.create(linha: linha_congic_agronomia, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_recursos_florestais_engenharia_florestal"
Membro.create(linha: linha_congic_recursos_florestais_engenharia_florestal, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_recursos_pesqueiros_engenharia_pesca"
Membro.create(linha: linha_congic_recursos_pesqueiros_engenharia_pesca, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_zootecnia_e_medicina_veterinaria"
Membro.create(linha: linha_congic_zootecnia_e_medicina_veterinaria, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_artes"
Membro.create(linha: linha_congic_artes, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador336, coordenador: false)
puts "Adicionando avaliador336 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador336, coordenador: false)

puts "Criando usuário victor.carvalho@ifrn.edu.br"
avaliador337 = Usuario.create(nome: 'Victor Carvalho Galvão de Freitas', email: 'victor.carvalho@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador337 = Organizador.create(usuario: avaliador337)
puts "Adicionando avaliador337 a linha linha_congic_engenharia_eletrica"
Membro.create(linha: linha_congic_engenharia_eletrica, organizador: avaliador337, coordenador: false)
puts "Adicionando avaliador337 a linha linha_congic_ciencias_computacao"
Membro.create(linha: linha_congic_ciencias_computacao, organizador: avaliador337, coordenador: false)

puts "Criando usuário viviane.medeiros@ifrn.edu.br"
avaliador338 = Usuario.create(nome: 'Viviane Ferreira de Medeiros ', email: 'viviane.medeiros@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador338 = Organizador.create(usuario: avaliador338)
puts "Adicionando avaliador338 a linha linha_congic_educacao"
Membro.create(linha: linha_congic_educacao, organizador: avaliador338, coordenador: false)
puts "Adicionando avaliador338 a linha linha_congic_saude_coletiva"
Membro.create(linha: linha_congic_saude_coletiva, organizador: avaliador338, coordenador: false)
puts "Adicionando avaliador338 a linha linha_congic_biologia_geral"
Membro.create(linha: linha_congic_biologia_geral, organizador: avaliador338, coordenador: false)
puts "Adicionando avaliador338 a linha linha_congic_bioquimica"
Membro.create(linha: linha_congic_bioquimica, organizador: avaliador338, coordenador: false)
puts "Adicionando avaliador338 a linha linha_congic_botanica"
Membro.create(linha: linha_congic_botanica, organizador: avaliador338, coordenador: false)
puts "Adicionando avaliador338 a linha linha_congic_ecologia_meio_ambiente"
Membro.create(linha: linha_congic_ecologia_meio_ambiente, organizador: avaliador338, coordenador: false)
puts "Adicionando avaliador338 a linha linha_congic_microbiologia"
Membro.create(linha: linha_congic_microbiologia, organizador: avaliador338, coordenador: false)

puts "Procurando usuário rodrigo.pessoa@ifrn.edu.br"
avaliador339 = Usuario.find_by(email: 'rodrigo.pessoa@ifrn.edu.br')
avaliador339 = Organizador.find_by(usuario: avaliador339)
puts "Adicionando avaliador339 a linha linha_congic_linguistica"
Membro.create(linha: linha_congic_linguistica, organizador: avaliador339, coordenador: false)
puts "Adicionando avaliador339 a linha linha_congic_letras"
Membro.create(linha: linha_congic_letras, organizador: avaliador339, coordenador: false)

      
      puts "Concluído!"
  end

  desc "Notificar Cadastro de Avaliadores"
  task notificar_cadastro_avaliador: :environment do
=begin    
membro_comissao_cientifica = Perfil.find_by(slug: 'membro_comissao_cientifica')
linha_congic_engenharia_civil  = Linha.find_by(nome: 'ENGENHARIAS - Engenharia Civil')
linha_congic_arquitetura_urbanismo  = Linha.find_by(nome: 'CIÊNCIAS SOCIAIS APLICADAS - Arquitetura e Urbanismo')

avaliador181 = Usuario.create(nome: 'GILDA LUCIA BAKKER BATISTA DE MENEZES', email: 'gilda.lucia@escolar.ifrn.edu.br​', password: '#$852$#', perfil: membro_comissao_cientifica)
avaliador181 = Organizador.create(usuario: avaliador181)
puts "Adicionando avaliador181 a linha linha_congic_engenharia_civil"
Membro.create(linha: linha_congic_engenharia_civil, organizador: avaliador181, coordenador: false)
puts "Adicionando avaliador181 a linha linha_congic_arquitetura_urbanismo"
Membro.create(linha: linha_congic_arquitetura_urbanismo, organizador: avaliador181, coordenador: false)

puts "Procurando usuário gilda.lucia@escolar.ifrn.edu.br​"
avaliador181 = Usuario.find_by(email: 'gilda.lucia@escolar.ifrn.edu.br​')
avaliador181 = Organizador.find_by(usuario: avaliador181)
OrganizadorMailer.avaliador_cadastrado(avaliador181).deliver_now
puts "Terminado"
sleep(15)
=end

puts "Procurando usuário gregory_vinicios@hotmail.com"
avaliador252 = Usuario.find_by(email: 'gregory_vinicios@hotmail.com')
avaliador252 = Organizador.find_by(usuario: avaliador252)
OrganizadorMailer.avaliador_cadastrado(avaliador252).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário guilhermeddf@ppgsc.ufrn.br"
avaliador253 = Usuario.find_by(email: 'guilhermeddf@ppgsc.ufrn.br')
avaliador253 = Organizador.find_by(usuario: avaliador253)
OrganizadorMailer.avaliador_cadastrado(avaliador253).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário guilherme.sachs@ifpr.edu.br"
avaliador254 = Usuario.find_by(email: 'guilherme.sachs@ifpr.edu.br')
avaliador254 = Organizador.find_by(usuario: avaliador254)
OrganizadorMailer.avaliador_cadastrado(avaliador254).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário gustavo.brito@ifrn.edu.br"
avaliador255 = Usuario.find_by(email: 'gustavo.brito@ifrn.edu.br')
avaliador255 = Organizador.find_by(usuario: avaliador255)
OrganizadorMailer.avaliador_cadastrado(avaliador255).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário gu_spanic@hotmail.com"
avaliador256 = Usuario.find_by(email: 'gu_spanic@hotmail.com')
avaliador256 = Organizador.find_by(usuario: avaliador256)
OrganizadorMailer.avaliador_cadastrado(avaliador256).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário iasmim.soares@hotmail.com"
avaliador257 = Usuario.find_by(email: 'iasmim.soares@hotmail.com')
avaliador257 = Organizador.find_by(usuario: avaliador257)
OrganizadorMailer.avaliador_cadastrado(avaliador257).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário israelamiriam@hotmail.com"
avaliador258 = Usuario.find_by(email: 'israelamiriam@hotmail.com')
avaliador258 = Organizador.find_by(usuario: avaliador258)
OrganizadorMailer.avaliador_cadastrado(avaliador258).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário ivamasullo@hotmail.com"
avaliador259 = Usuario.find_by(email: 'ivamasullo@hotmail.com')
avaliador259 = Organizador.find_by(usuario: avaliador259)
OrganizadorMailer.avaliador_cadastrado(avaliador259).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário jandara.aassis@gmail.com"
avaliador260 = Usuario.find_by(email: 'jandara.aassis@gmail.com')
avaliador260 = Organizador.find_by(usuario: avaliador260)
OrganizadorMailer.avaliador_cadastrado(avaliador260).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário jarley.nascimento@ifrn.edu.br"
avaliador261 = Usuario.find_by(email: 'jarley.nascimento@ifrn.edu.br')
avaliador261 = Organizador.find_by(usuario: avaliador261)
OrganizadorMailer.avaliador_cadastrado(avaliador261).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário joaildomaia@hotmail.com"
avaliador262 = Usuario.find_by(email: 'joaildomaia@hotmail.com')
avaliador262 = Organizador.find_by(usuario: avaliador262)
OrganizadorMailer.avaliador_cadastrado(avaliador262).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário kaio-ca-valcante@hotmail.com"
avaliador263 = Usuario.find_by(email: 'kaio-ca-valcante@hotmail.com')
avaliador263 = Organizador.find_by(usuario: avaliador263)
OrganizadorMailer.avaliador_cadastrado(avaliador263).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário joao.queiroz@ifrn.edu.br"
avaliador264 = Usuario.find_by(email: 'joao.queiroz@ifrn.edu.br')
avaliador264 = Organizador.find_by(usuario: avaliador264)
OrganizadorMailer.avaliador_cadastrado(avaliador264).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário joaovidalrn@hotmail.com"
avaliador265 = Usuario.find_by(email: 'joaovidalrn@hotmail.com')
avaliador265 = Organizador.find_by(usuario: avaliador265)
OrganizadorMailer.avaliador_cadastrado(avaliador265).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário jonas.almada@ifce.edu.br"
avaliador266 = Usuario.find_by(email: 'jonas.almada@ifce.edu.br')
avaliador266 = Organizador.find_by(usuario: avaliador266)
OrganizadorMailer.avaliador_cadastrado(avaliador266).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário muller.jonas@hotmail.com.br"
avaliador267 = Usuario.find_by(email: 'muller.jonas@hotmail.com.br')
avaliador267 = Organizador.find_by(usuario: avaliador267)
OrganizadorMailer.avaliador_cadastrado(avaliador267).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário magnaldo.araujjo@ifrn.edu.br"
avaliador268 = Usuario.find_by(email: 'magnaldo.araujjo@ifrn.edu.br')
avaliador268 = Organizador.find_by(usuario: avaliador268)
OrganizadorMailer.avaliador_cadastrado(avaliador268).deliver_now
puts "Terminado"
sleep(15)


puts "Procurando usuário jyp.leite@ifrn.edu.br"
avaliador270 = Usuario.find_by(email: 'jyp.leite@ifrn.edu.br')
avaliador270 = Organizador.find_by(usuario: avaliador270)
OrganizadorMailer.avaliador_cadastrado(avaliador270).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário juanfflorencio@gmail.com"
avaliador271 = Usuario.find_by(email: 'juanfflorencio@gmail.com')
avaliador271 = Organizador.find_by(usuario: avaliador271)
OrganizadorMailer.avaliador_cadastrado(avaliador271).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário julisg@live.com"
avaliador272 = Usuario.find_by(email: 'julisg@live.com')
avaliador272 = Organizador.find_by(usuario: avaliador272)
OrganizadorMailer.avaliador_cadastrado(avaliador272).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário julyenne.lima@gmail.com"
avaliador273 = Usuario.find_by(email: 'julyenne.lima@gmail.com')
avaliador273 = Organizador.find_by(usuario: avaliador273)
OrganizadorMailer.avaliador_cadastrado(avaliador273).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário karlosthadeu@gmail.com"
avaliador274 = Usuario.find_by(email: 'karlosthadeu@gmail.com')
avaliador274 = Organizador.find_by(usuario: avaliador274)
OrganizadorMailer.avaliador_cadastrado(avaliador274).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário eyglys.araujo@ifrn.edu.br"
avaliador275 = Usuario.find_by(email: 'eyglys.araujo@ifrn.edu.br')
avaliador275 = Organizador.find_by(usuario: avaliador275)
OrganizadorMailer.avaliador_cadastrado(avaliador275).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário kleberluiz.ufs@gmail.com"
avaliador276 = Usuario.find_by(email: 'kleberluiz.ufs@gmail.com')
avaliador276 = Organizador.find_by(usuario: avaliador276)
OrganizadorMailer.avaliador_cadastrado(avaliador276).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário lais.correia@ifrn.edu.br"
avaliador277 = Usuario.find_by(email: 'lais.correia@ifrn.edu.br')
avaliador277 = Organizador.find_by(usuario: avaliador277)
OrganizadorMailer.avaliador_cadastrado(avaliador277).deliver_now
puts "Terminado"
sleep(15)


puts "Procurando usuário laura.rampazzo@ifsp.edu.br"
avaliador279 = Usuario.find_by(email: 'laura.rampazzo@ifsp.edu.br')
avaliador279 = Organizador.find_by(usuario: avaliador279)
OrganizadorMailer.avaliador_cadastrado(avaliador279).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário laysi_araujo@hotmail.com"
avaliador280 = Usuario.find_by(email: 'laysi_araujo@hotmail.com')
avaliador280 = Organizador.find_by(usuario: avaliador280)
OrganizadorMailer.avaliador_cadastrado(avaliador280).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário leandro.luttiane@ifrn.edu.br"
avaliador281 = Usuario.find_by(email: 'leandro.luttiane@ifrn.edu.br')
avaliador281 = Organizador.find_by(usuario: avaliador281)
OrganizadorMailer.avaliador_cadastrado(avaliador281).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário lidiane.alves06@gmail.com"
avaliador282 = Usuario.find_by(email: 'lidiane.alves06@gmail.com')
avaliador282 = Organizador.find_by(usuario: avaliador282)
OrganizadorMailer.avaliador_cadastrado(avaliador282).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário ligia.gonzaga@ifrn.edu.br"
avaliador283 = Usuario.find_by(email: 'ligia.gonzaga@ifrn.edu.br')
avaliador283 = Organizador.find_by(usuario: avaliador283)
OrganizadorMailer.avaliador_cadastrado(avaliador283).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário luan.oliveira@ifpb.edu.br"
avaliador284 = Usuario.find_by(email: 'luan.oliveira@ifpb.edu.br')
avaliador284 = Organizador.find_by(usuario: avaliador284)
OrganizadorMailer.avaliador_cadastrado(avaliador284).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário lucas_ramosjp@hotmail.com"
avaliador285 = Usuario.find_by(email: 'lucas_ramosjp@hotmail.com')
avaliador285 = Organizador.find_by(usuario: avaliador285)
OrganizadorMailer.avaliador_cadastrado(avaliador285).deliver_now
puts "Terminado"
sleep(15)


puts "Procurando usuário luciana.rabelo@ifrn.edu.br"
avaliador287 = Usuario.find_by(email: 'luciana.rabelo@ifrn.edu.br')
avaliador287 = Organizador.find_by(usuario: avaliador287)
OrganizadorMailer.avaliador_cadastrado(avaliador287).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário luciano.cipriano88@gmail.com"
avaliador288 = Usuario.find_by(email: 'luciano.cipriano88@gmail.com')
avaliador288 = Organizador.find_by(usuario: avaliador288)
OrganizadorMailer.avaliador_cadastrado(avaliador288).deliver_now
puts "Terminado"
sleep(15)


puts "Procurando usuário lucileide.dantas@ifrn.edu.br"
avaliador290 = Usuario.find_by(email: 'lucileide.dantas@ifrn.edu.br')
avaliador290 = Organizador.find_by(usuario: avaliador290)
OrganizadorMailer.avaliador_cadastrado(avaliador290).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário lucimar.f@hotmail.com"
avaliador291 = Usuario.find_by(email: 'lucimar.f@hotmail.com')
avaliador291 = Organizador.find_by(usuario: avaliador291)
OrganizadorMailer.avaliador_cadastrado(avaliador291).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário maikon.maia@ifrn.edu.br"
avaliador292 = Usuario.find_by(email: 'maikon.maia@ifrn.edu.br')
avaliador292 = Organizador.find_by(usuario: avaliador292)
OrganizadorMailer.avaliador_cadastrado(avaliador292).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário marcela.silva@ifrn.edu.br"
avaliador293 = Usuario.find_by(email: 'marcela.silva@ifrn.edu.br')
avaliador293 = Organizador.find_by(usuario: avaliador293)
OrganizadorMailer.avaliador_cadastrado(avaliador293).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário marcelo.oliveira@ifms.edu.br"
avaliador294 = Usuario.find_by(email: 'marcelo.oliveira@ifms.edu.br')
avaliador294 = Organizador.find_by(usuario: avaliador294)
OrganizadorMailer.avaliador_cadastrado(avaliador294).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário marcia.dantas@ifrn.edu.br"
avaliador295 = Usuario.find_by(email: 'marcia.dantas@ifrn.edu.br')
avaliador295 = Organizador.find_by(usuario: avaliador295)
OrganizadorMailer.avaliador_cadastrado(avaliador295).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário marciarluiz@yahoo.com.br"
avaliador296 = Usuario.find_by(email: 'marciarluiz@yahoo.com.br')
avaliador296 = Organizador.find_by(usuario: avaliador296)
OrganizadorMailer.avaliador_cadastrado(avaliador296).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário marcio.bezerra@ifrn.edu.br"
avaliador297 = Usuario.find_by(email: 'marcio.bezerra@ifrn.edu.br')
avaliador297 = Organizador.find_by(usuario: avaliador297)
OrganizadorMailer.avaliador_cadastrado(avaliador297).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário nilaof@gmail.com"
avaliador298 = Usuario.find_by(email: 'nilaof@gmail.com')
avaliador298 = Organizador.find_by(usuario: avaliador298)
OrganizadorMailer.avaliador_cadastrado(avaliador298).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário marcos.oliveira@ifrn.edu.br"
avaliador299 = Usuario.find_by(email: 'marcos.oliveira@ifrn.edu.br')
avaliador299 = Organizador.find_by(usuario: avaliador299)
OrganizadorMailer.avaliador_cadastrado(avaliador299).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário socorromarya@gmail.com"
avaliador300 = Usuario.find_by(email: 'socorromarya@gmail.com')
avaliador300 = Organizador.find_by(usuario: avaliador300)
OrganizadorMailer.avaliador_cadastrado(avaliador300).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário msmcunha@gmail.com"
avaliador301 = Usuario.find_by(email: 'msmcunha@gmail.com')
avaliador301 = Organizador.find_by(usuario: avaliador301)
OrganizadorMailer.avaliador_cadastrado(avaliador301).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário elizabeth55_@hotmail.com"
avaliador302 = Usuario.find_by(email: 'elizabeth55_@hotmail.com')
avaliador302 = Organizador.find_by(usuario: avaliador302)
OrganizadorMailer.avaliador_cadastrado(avaliador302).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário jahynne.dantas@ifrn.edu.br"
avaliador303 = Usuario.find_by(email: 'jahynne.dantas@ifrn.edu.br')
avaliador303 = Organizador.find_by(usuario: avaliador303)
OrganizadorMailer.avaliador_cadastrado(avaliador303).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário mariana.dias@ifrn.edu.br"
avaliador304 = Usuario.find_by(email: 'mariana.dias@ifrn.edu.br')
avaliador304 = Organizador.find_by(usuario: avaliador304)
OrganizadorMailer.avaliador_cadastrado(avaliador304).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário marilson.mineiro@ifrn.edu.br"
avaliador305 = Usuario.find_by(email: 'marilson.mineiro@ifrn.edu.br')
avaliador305 = Organizador.find_by(usuario: avaliador305)
OrganizadorMailer.avaliador_cadastrado(avaliador305).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário profmartacp2@gmail.com"
avaliador306 = Usuario.find_by(email: 'profmartacp2@gmail.com')
avaliador306 = Organizador.find_by(usuario: avaliador306)
OrganizadorMailer.avaliador_cadastrado(avaliador306).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário meire.celedonio@ifrn.edu.br"
avaliador307 = Usuario.find_by(email: 'meire.celedonio@ifrn.edu.br')
avaliador307 = Organizador.find_by(usuario: avaliador307)
OrganizadorMailer.avaliador_cadastrado(avaliador307).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário miqueiasgeo@gmail.com"
avaliador308 = Usuario.find_by(email: 'miqueiasgeo@gmail.com')
avaliador308 = Organizador.find_by(usuario: avaliador308)
OrganizadorMailer.avaliador_cadastrado(avaliador308).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário monica_limap@hotmail.com"
avaliador309 = Usuario.find_by(email: 'monica_limap@hotmail.com')
avaliador309 = Organizador.find_by(usuario: avaliador309)
OrganizadorMailer.avaliador_cadastrado(avaliador309).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário monicabritosaa@gmail.com"
avaliador310 = Usuario.find_by(email: 'monicabritosaa@gmail.com')
avaliador310 = Organizador.find_by(usuario: avaliador310)
OrganizadorMailer.avaliador_cadastrado(avaliador310).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário morganamelo10@gmail.com"
avaliador311 = Usuario.find_by(email: 'morganamelo10@gmail.com')
avaliador311 = Organizador.find_by(usuario: avaliador311)
OrganizadorMailer.avaliador_cadastrado(avaliador311).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário nadir.arruda@ifrn.edu.br"
avaliador312 = Usuario.find_by(email: 'nadir.arruda@ifrn.edu.br')
avaliador312 = Organizador.find_by(usuario: avaliador312)
OrganizadorMailer.avaliador_cadastrado(avaliador312).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário nathalia.araujo@ifrn.edu.br"
avaliador313 = Usuario.find_by(email: 'nathalia.araujo@ifrn.edu.br')
avaliador313 = Organizador.find_by(usuario: avaliador313)
OrganizadorMailer.avaliador_cadastrado(avaliador313).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário neilson.lima@ifrn.edu.br"
avaliador314 = Usuario.find_by(email: 'neilson.lima@ifrn.edu.br')
avaliador314 = Organizador.find_by(usuario: avaliador314)
OrganizadorMailer.avaliador_cadastrado(avaliador314).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário maccchipaloma@hotmail.com"
avaliador315 = Usuario.find_by(email: 'maccchipaloma@hotmail.com')
avaliador315 = Organizador.find_by(usuario: avaliador315)
OrganizadorMailer.avaliador_cadastrado(avaliador315).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário patricia.pinheiro@ifap.edu.br"
avaliador316 = Usuario.find_by(email: 'patricia.pinheiro@ifap.edu.br')
avaliador316 = Organizador.find_by(usuario: avaliador316)
OrganizadorMailer.avaliador_cadastrado(avaliador316).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário paulo.douglas.lima@fisica.ufrn.br"
avaliador317 = Usuario.find_by(email: 'paulo.douglas.lima@fisica.ufrn.br')
avaliador317 = Organizador.find_by(usuario: avaliador317)
OrganizadorMailer.avaliador_cadastrado(avaliador317).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário paulo.cunha@ifap.edu.br"
avaliador318 = Usuario.find_by(email: 'paulo.cunha@ifap.edu.br')
avaliador318 = Organizador.find_by(usuario: avaliador318)
OrganizadorMailer.avaliador_cadastrado(avaliador318).deliver_now
puts "Terminado"
sleep(15)


puts "Procurando usuário rafael.moraes@ifrn.edu.br"
avaliador320 = Usuario.find_by(email: 'rafael.moraes@ifrn.edu.br')
avaliador320 = Organizador.find_by(usuario: avaliador320)
OrganizadorMailer.avaliador_cadastrado(avaliador320).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário raquel.coelho@ifrn.edu.br"
avaliador321 = Usuario.find_by(email: 'raquel.coelho@ifrn.edu.br')
avaliador321 = Organizador.find_by(usuario: avaliador321)
OrganizadorMailer.avaliador_cadastrado(avaliador321).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário renatocgadm@hotmail.com"
avaliador322 = Usuario.find_by(email: 'renatocgadm@hotmail.com')
avaliador322 = Organizador.find_by(usuario: avaliador322)
OrganizadorMailer.avaliador_cadastrado(avaliador322).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário robertacynthia@gmail.com"
avaliador323 = Usuario.find_by(email: 'robertacynthia@gmail.com')
avaliador323 = Organizador.find_by(usuario: avaliador323)
OrganizadorMailer.avaliador_cadastrado(avaliador323).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário robson.oliveira@ifrn.edu.br"
avaliador324 = Usuario.find_by(email: 'robson.oliveira@ifrn.edu.br')
avaliador324 = Organizador.find_by(usuario: avaliador324)
OrganizadorMailer.avaliador_cadastrado(avaliador324).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário rocco.nelson@ifrn.edu.br"
avaliador325 = Usuario.find_by(email: 'rocco.nelson@ifrn.edu.br')
avaliador325 = Organizador.find_by(usuario: avaliador325)
OrganizadorMailer.avaliador_cadastrado(avaliador325).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário rodrigopaiva@bol.com.br"
avaliador326 = Usuario.find_by(email: 'rodrigopaiva@bol.com.br')
avaliador326 = Organizador.find_by(usuario: avaliador326)
OrganizadorMailer.avaliador_cadastrado(avaliador326).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário rodrigo.vidal@ifrn.edu.br"
avaliador327 = Usuario.find_by(email: 'rodrigo.vidal@ifrn.edu.br')
avaliador327 = Organizador.find_by(usuario: avaliador327)
OrganizadorMailer.avaliador_cadastrado(avaliador327).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário romildo.oliveira@ifrn.edu.br"
avaliador328 = Usuario.find_by(email: 'romildo.oliveira@ifrn.edu.br')
avaliador328 = Organizador.find_by(usuario: avaliador328)
OrganizadorMailer.avaliador_cadastrado(avaliador328).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário rosangela.silva@ifrn.edu.br"
avaliador329 = Usuario.find_by(email: 'rosangela.silva@ifrn.edu.br')
avaliador329 = Organizador.find_by(usuario: avaliador329)
OrganizadorMailer.avaliador_cadastrado(avaliador329).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário roseaneidalino@gmail.com"
avaliador330 = Usuario.find_by(email: 'roseaneidalino@gmail.com')
avaliador330 = Organizador.find_by(usuario: avaliador330)
OrganizadorMailer.avaliador_cadastrado(avaliador330).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário saviorennan@gmail.com"
avaliador331 = Usuario.find_by(email: 'saviorennan@gmail.com')
avaliador331 = Organizador.find_by(usuario: avaliador331)
OrganizadorMailer.avaliador_cadastrado(avaliador331).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário silvana_sg_13@hotmail.com"
avaliador332 = Usuario.find_by(email: 'silvana_sg_13@hotmail.com')
avaliador332 = Organizador.find_by(usuario: avaliador332)
OrganizadorMailer.avaliador_cadastrado(avaliador332).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário talita.massena@ifsertao-pe.edu.br"
avaliador333 = Usuario.find_by(email: 'talita.massena@ifsertao-pe.edu.br')
avaliador333 = Organizador.find_by(usuario: avaliador333)
OrganizadorMailer.avaliador_cadastrado(avaliador333).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário tatiane.almeida@ifrn.edu.br"
avaliador334 = Usuario.find_by(email: 'tatiane.almeida@ifrn.edu.br')
avaliador334 = Organizador.find_by(usuario: avaliador334)
OrganizadorMailer.avaliador_cadastrado(avaliador334).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário thales.ramos@ifrn.edu.br"
avaliador335 = Usuario.find_by(email: 'thales.ramos@ifrn.edu.br')
avaliador335 = Organizador.find_by(usuario: avaliador335)
OrganizadorMailer.avaliador_cadastrado(avaliador335).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário thiagoalexxandre316@gmail.com"
avaliador336 = Usuario.find_by(email: 'thiagoalexxandre316@gmail.com')
avaliador336 = Organizador.find_by(usuario: avaliador336)
OrganizadorMailer.avaliador_cadastrado(avaliador336).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário victor.carvalho@ifrn.edu.br"
avaliador337 = Usuario.find_by(email: 'victor.carvalho@ifrn.edu.br')
avaliador337 = Organizador.find_by(usuario: avaliador337)
OrganizadorMailer.avaliador_cadastrado(avaliador337).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário viviane.medeiros@ifrn.edu.br"
avaliador338 = Usuario.find_by(email: 'viviane.medeiros@ifrn.edu.br')
avaliador338 = Organizador.find_by(usuario: avaliador338)
OrganizadorMailer.avaliador_cadastrado(avaliador338).deliver_now
puts "Terminado"
sleep(15)

puts "Procurando usuário rodrigo.pessoa@ifrn.edu.br"
avaliador339 = Usuario.find_by(email: 'rodrigo.pessoa@ifrn.edu.br')
avaliador339 = Organizador.find_by(usuario: avaliador339)
OrganizadorMailer.avaliador_cadastrado(avaliador339).deliver_now
puts "Terminado"
sleep(15)


    puts "Concluído!"
  end

  desc "Atribuir avaliadores"
  task atribuir_avaliadores: :environment do
    i = 0
    Trabalho.all.each do |trabalho|
        i = i + 1
        puts "Definindo "+i+"º trabalho: "+trabalho.titulo+" id= "+trabalho.id.to_s
        #trabalho.definir_avaliadores
        sleep(30)
    end
  end
end
