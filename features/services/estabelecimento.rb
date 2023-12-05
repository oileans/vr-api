module Vr
  module Rest
    class Estabelecimentos
      include HTTParty

      headers 'Content-Type' => 'application/json'
      base_uri URL['url_default']

      def get_estabelecimentos
        result_set = self.class.get('/api-web/comum/enumerations/VRPAT')
        result_set
      end
    end
  end
end