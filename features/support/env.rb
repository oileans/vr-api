require 'cucumber'
require 'httparty'
require 'pry'
require 'rspec'

#carregando todos os arquivos localizados na spec_helper com extensao .rb
Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')].each {|file| require file}

#constante para carregar yrl.yml que é consumido pela clase de estabelecimento
URL = YAML.load_file(File.dirname(__FILE__) + "/config/url.yml")

#extendendo modulo REST para todo o projeto.
World(REST)