# Request::Cnpj

[Read in English](README.md)

Um cliente Ruby para consultar dados de CNPJ (Cadastro Nacional da Pessoa Jurídica) por meio da [API OpenCNPJ](https://api.opencnpj.org).

## Instalação

Instale a gem e adicione-a ao Gemfile da aplicação executando:

```bash
bundle add request-cnpj
```

Se o bundler não estiver sendo usado para gerenciar as dependências, instale a gem executando:

```bash
gem install request-cnpj
```

Alternativamente, adicione-a diretamente ao seu Gemfile:

```ruby
gem 'request-cnpj'
```

E execute:

```bash
bundle install
```

## Uso

```ruby
require 'request/cnpj'

client = Request::Cnpj::Client.new
client.find('12.345.678/0001-95')
# => { "cnpj" => "12345678000195", ... }
```

O método `find` aceita o CNPJ com ou sem pontuação — qualquer caractere que não seja número é removido antes da requisição.

## Desenvolvimento

Após clonar o repositório, rode `bin/setup` para instalar as dependências. Em seguida, rode `rake spec` para executar os testes. Você também pode rodar `bin/console` para um prompt interativo e experimentar o código.

Para instalar essa gem na sua máquina local, rode `bundle exec rake install`. Para lançar uma nova versão, atualize o número da versão em `version.rb` e rode `bundle exec rake release`, que cria uma tag no git, envia os commits e a tag criada, e publica o arquivo `.gem` no [rubygems.org](https://rubygems.org).

## Contribuindo

Relatos de bugs e pull requests são bem-vindos no GitHub em https://github.com/moshepedroribeiro/request-cnpj. Este projeto pretende ser um espaço seguro e acolhedor para colaboração, e espera-se que os contribuidores sigam o [código de conduta](CODE_OF_CONDUCT.md).

## Código de Conduta

Espera-se que todos que interagem nos códigos-fonte, issue trackers, salas de chat e listas de e-mail do projeto Request::Cnpj sigam o [código de conduta](CODE_OF_CONDUCT.md).
