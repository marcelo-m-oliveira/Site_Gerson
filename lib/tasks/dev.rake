namespace :dev do
  desc "Configura o ambiente de desenvolvimento."
  task setup: :environment do
    show_spinner("Dropping DB...") { %x(rails db:drop) }
    show_spinner("Create DB...") { %x(rails db:create) }
    show_spinner("Migrating DB...") { %x(rails db:migrate) }
    %x(rails dev:add_services)
    #%x(rails dev:add_mining_types)
  end
  
  desc "Add services"
  task add_services: :environment do
    show_spinner("Add Services...") do 
      services = [
        {
          name: "Apoio turístico",
          description: "Todo o processo de booking, organização dos tours e
          itinerários de viagem ( Reino Unido e Europa)."
        },
        {
          name: "Aulas de Inglês",
          description: "Se você está interessado em aprender inglês (Europeu), 
          eu posso ajudá-lo a aprender de maneira rápida, eficiente e divertida. 
          Cursos sob medida, seja para negócios, turismo ou lazer."
        },
        {
          name: "Aulas de Português do Brasil",
          description: "Se você está interessado em aprender português (do Brasil), 
          eu posso ajudá-lo a aprender de maneira rápida, eficiente e divertida. 
          Cursos sob medida, seja para negócios, turismo ou lazer."
        },
        {
          name: "Aulas de Português de Portugal",
          description: "Se você está interessado em aprender português (de Portugal), 
          eu posso ajudá-lo a aprender de maneira rápida, eficiente e divertida. 
          Cursos sob medida, seja para negócios, turismo ou lazer."
        },
        {
          name: "Consultoria acadêmica",
          description: "Ainda falta descrição."
        },
        {
          name: "Consultoria no Brasil",
          description: "Economia, História, Geografia, Cultura. Sou especialista no Brasil e posso ajudá-lo
          com relatórios, informações informativas ou cursos de curta duração."
        },
        {
          name: "Serviços linguísticos de tradução e interpretação",
          description: "Português para Inglês, de Inglês para Português, 
          de Espanhol para Inglês, de Inglês para Espanhol."
        },
        {
          name: "Serviços de voluntariado",
          description: "Interessado em ensinar inglês no Brasil como voluntário. 
          Por favor entre em contato comigo."
        }
      ]

      services.each do |service| 
        Service.find_or_create_by!(service)
      end
    end
  end
  
  private
  
  def show_spinner(msg_start, msg_end = "successfully!!")
    
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}") #bouncing_ball
    spinner.auto_spin
    yield
    spinner.success ("#{msg_end}")
  end
  
end