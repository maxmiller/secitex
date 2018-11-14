namespace :certificados do

  desc "Gerar todos os certificados"
  task gerar: :environment do
    Rake::Task["certificados:participacao"].execute
    Rake::Task["certificados:apresentacao_trabalho"].execute
    Rake::Task["certificados:aprovacao_trabalho"].execute
    Rake::Task["certificados:apresentacao_minicurso"].execute
    Rake::Task["certificados:participacao_minicurso"].execute
    Rake::Task["certificados:organizacao"].execute
  end

  desc "Certificados de participação"
  task participacao: :environment do

    print "Gerando certificados de participação para inscritos... "
    Participante.credenciados.each do |participante|
      texto = "<strong>#{participante.usuario.nome.mb_chars.upcase}</strong>, participou da"
      Certificado.create(usuario: participante.usuario, texto: texto, titulo: 'Certificado de participação')
    end
    puts "Concluído!"

    print "Gerando certificados de participação para os organizadores... "
    Organizador.all.each do |organizador|
      texto = "<strong>#{organizador.usuario.nome.mb_chars.upcase}</strong>, nascido(a) no <strong>Brasil</strong>, participou do"
      #Certificado.create(usuario: organizador.usuario, texto: texto, titulo: 'Certificado de participação')
    end
    puts "Concluído!"

  end

  desc "Certificados de apresentação de trabalhos"
  task apresentacao_trabalho: :environment do
    print "Gerando certificados de apresentação de trabalhos... "
    Trabalho.aprovados.each do |trabalho|
      texto = "<strong>#{trabalho.participante.nome.upcase}</strong>, nascido(a) no <strong>#{trabalho.participante.pais.nome.upcase}</strong>, apresentou o trabalho <strong>#{trabalho.titulo.upcase}</strong>, na modalidade #{trabalho.tipo_trabalho},"
      Certificado.create(usuario: trabalho.participante.usuario, texto: texto, titulo: 'Certificado de apresentação de trabalho')
    end
    puts "Concluído!"
  end

  desc "Certificados de apresentação de trabalhos do congic"
  task apresentacao_trabalho_congic: :environment do
    print "Gerando certificados de apresentação de trabalhos... "
    Trabalho.aprovados.each do |trabalho|
      if trabalho.linha.evento.nome == "XIV CONGIC"
        lista_autores = ""
        trabalho.autores.each_with_index do |autor,index|
          lista_autores = lista_autores + "<strong>#{autor.nome.mb_chars.upcase}</strong>"
          if (index+1) == trabalho.autores.size-1
            lista_autores = lista_autores + " e "
          elsif (index+1) != trabalho.autores.size
            lista_autores = lista_autores + ", "
          end
        end
        if trabalho.autores.size == 1
          texto_apresentar = "apresentou"
        else
          texto_apresentar = "apresentaram"
        end
        texto = lista_autores+", "+texto_apresentar+" o trabalho <strong>#{trabalho.titulo.mb_chars.upcase}</strong>, selecionado para o <strong>XIV CONGIC</strong>, na modalidade <strong>#{trabalho.tipo_trabalho.mb_chars.nome}</strong>, na"
        Certificado.create(usuario: trabalho.participante.usuario, texto: texto, titulo: 'Certificado de apresentação de trabalho CONGIC')
      end
    end
    puts "Concluído!"
  end

  desc "Certificados de aprovação de trabalhos"
  task aprovacao_trabalho: :environment do
    print "Gerando certificados de aprovação de trabalhos... "
    Trabalho.aprovados.each do |trabalho|
      texto = "<strong>#{trabalho.participante.nome.upcase}</strong>, nascido(a) no <strong>#{trabalho.participante.pais.nome.upcase}</strong>, aprovou o trabalho <strong>#{trabalho.titulo.upcase}</strong>, na modalidade #{trabalho.tipo_trabalho},"
      Certificado.create(usuario: trabalho.participante.usuario, texto: texto, titulo: 'Certificado de aprovação de trabalho')

      trabalho.autores.each do |autor|
        texto = "<strong>#{autor.nome.upcase}</strong>, nascido(a) no <strong>Brasil</strong>, aprovou o trabalho <strong>#{trabalho.titulo.upcase}</strong>, na modalidade #{trabalho.tipo_trabalho}, no"
        Certificado.create(usuario: trabalho.participante.usuario, texto: texto, titulo: "Certificado de aprovação de trabalho (#{autor.nome.upcase})")
      end
    end
    puts "Concluído!"
  end

  desc "Certificados de apresentação de minicursos"
  task apresentacao_minicurso: :environment do
    print "Gerando certificados de apresentação de minicursos... "
    Minicurso.aprovados.each do |minicurso|
      lista_ministrantes = ""
      ministrantes = minicurso.ministrantes;
      ministrantes.each_with_index do |ministrante,index|
        lista_ministrantes = lista_ministrantes + "<strong>#{ministrante.nome.mb_chars.upcase}</strong>"
        if (index+1) == ministrantes.size-1
          lista_ministrantes = lista_ministrantes + " e "
        elsif (index+1) != ministrantes.size
          lista_ministrantes = lista_ministrantes + ", "
        end
      end
      if ministrantes.size == 1
        texto_ministrar = "ministrou"
      else
        texto_ministrar = "ministraram"
      end
      if minicurso.tipo_minicurso.nome == "MINICURSO"
        texto_tipo = "o minicurso"
      else
        texto_tipo = "a oficina"
      end
      texto = lista_ministrantes+", "+texto_ministrar+" "+texto_tipo+" <strong>#{minicurso.titulo.mb_chars.upcase}</strong>, com carga-horária de "+minicurso.carga_horaria.to_s+" horas, na"
      Certificado.create(usuario: minicurso.participante.usuario, texto: texto, titulo: 'Certificado de apresentação de minicurso/oficina')
      puts texto
    end
    puts "Concluído!"
  end

  desc "Certificados de participação em minicursos"
  task participacao_minicurso: :environment do
    print "Gerando certificados de participação em minicursos... "
    Inscricao.emitir_certificados.each do |inscricao|
      if inscricao.minicurso.tipo_minicurso.nome == "MINICURSO"
        texto_tipo = "do minicurso"
      else
        texto_tipo = "da oficina"
      end
      texto = "<strong>#{inscricao.participante.nome.mb_chars.upcase}</strong>, participou "+texto_tipo+" <strong>#{inscricao.minicurso.titulo.mb_chars.upcase}</strong>, com carga-horária de "+inscricao.minicurso.carga_horaria.to_s+" horas, na"
      Certificado.create(usuario: inscricao.participante.usuario, texto: texto, titulo: 'Certificado de participação de minicurso/oficina')
    end
    puts "Concluído!"
  end

  desc "Certificados de organização"
  task organizacao: :environment do
    print "Gerando certificados de organização... "
    Organizador.all.each do |organizador|
      texto = "<strong>#{organizador.nome.upcase}</strong>, nascido(a) no <strong>Brasil</strong>, atuou como #{organizador.atuacao}, na organização do"
      Certificado.create(usuario: organizador.usuario, texto: texto, titulo: 'Certificado de organização')
    end

    Participante.isentos.each do |participante|
      if participante.motivo_isencao == 'Organizador'
        texto = "<strong>#{participante.nome.upcase}</strong>, nascido(a) no <strong>#{participante.pais.nome.upcase}</strong>, atuou na organização do"
        Certificado.create(usuario: participante.usuario, texto: texto, titulo: 'Certificado de organização')
      end
    end
    puts "Concluído!"
  end

  desc "Certificados de avaliação de trabalhos"
  task avaliacao_trabalho: :environment do
    puts "Gerando certificados de avaliação de trabalhos... "
    AvaliacaoTrabalho.all.each do |avaliacao|
      if avaliacao.situacao == 5
        texto = "<strong>#{avaliacao.organizador.nome.mb_chars.upcase}</strong>, avaliou o trabalho intitulado <em>#{avaliacao.trabalho.titulo.mb_chars.upcase}</em> durante a "
        Certificado.create(usuario: avaliacao.organizador.usuario, texto: texto, titulo: 'Certificado de avaliação')
      end
    end
    puts "Concluído!"
  end

end
