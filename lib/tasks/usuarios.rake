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

      puts "Criando usuário marcia.toledo@ifrn.edu.br"
      avaliador1 = Usuario.create(nome: 'Marcia Cristina Barragan Moraes Toledo', email: 'marcia.toledo@ifrn.edu.br', password: '#$852$#', perfil: membro_comissao_cientifica)
      avaliador1 = Organizador.create(usuario: avaliador1)
      puts "Adicionando avaliador1 a linha linha_simposio_educacao"
      Membro.create(linha: linha_simposio_educacao, organizador: avaliador1, coordenador: false)

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
    ultimo_sorteado = 875
    atribuir = false
    Trabalho.all.each do |trabalho|
      puts trabalho.avaliadores.length
      if trabalho.avaliadores.length == 0
        i = i + 1
        puts "Sorteando "+i.to_s+"º trabalho: "+trabalho.titulo+" id= "+trabalho.id.to_s
        trabalho.definir_avaliadores
        sleep(30)
        puts "Finalizado"
      end
    end
    puts "Concluído"
  end
end
