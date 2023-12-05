module Vr
  module Rest
    class Estabelecimentos

      #classe responsavel por bater no path que retorna todos os produtos e estabelecimentos.
      include HTTParty

      headers 'Content-Type' => 'application/json'

      #set_uri do HTTParty, buscando da constante definida em  env.rb
      base_uri URL['url_default']

      def get_estabelecimentos
        result_set = self.class.get('/api-web/comum/enumerations/VRPAT')
        result_set
      end
    end
  end
end