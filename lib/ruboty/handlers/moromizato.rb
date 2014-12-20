require 'ruboty/moromizato/actions/convert'

module Ruboty
  module Handlers
    class Moromizato < Base
      on /moromizato convert (?<text>.+)\z/, name: 'convert', description: 'Show moromizatonized text'

      def convert(message)
        Ruboty::Moromizato::Actions::Convert.new(message).call
      end
    end
  end
end
