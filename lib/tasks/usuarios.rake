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
      puts membro_comissao_cientifica.nome
  end

end
