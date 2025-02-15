Rails.application.routes.draw do
  resources :trabalhos do
    get 'prazo_encerrado', on: :collection
    get 'aceite'
  end
  resources :equipes do
    get 'prazo_encerrado', on: :collection
  end
  resources :minicursos do
    get 'prazo_encerrado', on: :collection
    get 'aceite'
  end
  resources :inscricoes do
    get 'encerradas', on: :collection
    get 'cancelar'
  end
  namespace :admin do
    resources :equipes
    resources :inscricoes
    resources :participantes do
      get 'credenciar'
      get 'aprovar_nota_empenho'
      get 'avaliar_isencao'
      get 'aprovar_pagamento'
      get 'confirmados', on: :collection
    end
    resources :organizadores
    resources :trabalhos do
      get 'avaliar'
      resources :avaliacoes, controller: 'avaliacoes_trabalhos'
    end
    resources :minicursos do
      get 'certificados'
      patch 'certificar'
      get 'participantes'
      resources :avaliacoes, controller: 'avaliacoes_minicursos'
    end
  end

  resources :equipes
  resources :sessions
  resources :participantes do
    get 'pagar'
  end

  resources :certificados
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'participantes#new'
  begin 
  	if not Config.first.nil? and Config.instance.inscricoes_abertas?
    		root 'participantes#new'
  	else
    		root 'sessions#new'
  	end
   rescue
 	puts 'Realizando migração'
   end 

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get 'cidades' => 'cidades#index', as: :cidades
  get 'login' => 'sessions#new', as: :login
  get 'logout' => 'sessions#destroy', as: :logout
  get 'admin' => 'admin#index', as: :admin
  get 'participacao' => 'participantes#participacao', as: :participacao
  get 'inscricoes_encerradas' => 'participantes#inscricoes_encerradas', as: :inscricoes_encerradas
  get 'conta' => 'usuarios#conta', as: :conta
  patch 'atualizar' => 'usuarios#atualizar', as: :atualizar_conta
  get 'recuperar_senha' => 'usuarios#recuperar_senha', as: :recuperar_senha
  post 'recuperacao_senha' => 'usuarios#recuperacao_senha', as: :recuperacao_senha
  get 'redefinir_senha' => 'usuarios#redefinir_senha', as: :redefinir_senha
  patch 'atualizar_senha' => 'usuarios#atualizar_senha', as: :atualizar_senha
  get "test_exception_notification" => "application#test_exception_notification"
  post 'pagamentos/:pagamento_id/notificar' => 'pagamentos#notificar', as: :notificar_pagamento
  get 'pagamentos/processando'
  get 'pagamentos/aprovado'
  get 'pagamentos/falhou'
  get 'usuarios/:usuario_id/personificar' => 'sessions#personificar', as: :personificar
  get 'get_linhas_by_evento/:evento_id', to: 'linhas#get_linhas_by_evento'
  get 'get_tipo_trabalhos_by_evento/:evento_id', to: 'tipo_trabalhos#get_tipo_trabalhos_by_evento'
  #get 'linha_search' => 'linhas#linha_search'
  #get 'tipo_trabalhos_search' => 'tipo_trabalhos#tipo_trabalhos_search'
  get 'get_linhas_minicursos', to: 'linhas#get_linhas_minicursos'

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
