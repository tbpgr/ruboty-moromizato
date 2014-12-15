# coding:utf-8

module Ruboty
  module Moromizato
    MOROMIZATO_RULES = {
      'さ' => 'しゃ',
      'す' => 'しゅ',
      'そ' => 'しょ',
      'ざ' => 'じゃ',
      'ず' => 'じゅ',
      'ぞ' => 'じょ',
      'サ' => 'シャ',
      'ス' => 'シュ',
      'ソ' => 'ショ',
      'ザ' => 'ジャ',
      'ズ' => 'ジュ',
      'ゾ' => 'ジョ'
    }

    module Actions
      class Convert < Ruboty::Actions::Base
        def call
          message.reply(convert)
        end

        private

        def convert
          encoded_text = message['text'].force_encoding("UTF-8")
          encoded_text.split('').map do |e|
            next e unless Moromizato::MOROMIZATO_RULES.key?(e)
            Moromizato::MOROMIZATO_RULES[e]
          end.join
        end
      end
    end
  end
end
