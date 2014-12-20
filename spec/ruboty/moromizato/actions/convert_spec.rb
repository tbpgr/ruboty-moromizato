# encoding: utf-8
require 'spec_helper'
require 'ruboty/moromizato/actions/convert'

# rubocop:disable LineLength, UnusedMethodArgument
describe Ruboty::Moromizato::Actions::Convert do
  context :analyze do
    let(:message) do
      # Dummy Message
      class Message < Hash
        def reply(message)
          message
        end
      end
      Message.new
    end

    cases = [
      {
        case_no: 1,
        case_title: 'contain hiragana sa-so case',
        text: 'さしすせそ',
        expected: 'しゃししゅせしょ'
      },
      {
        case_no: 2,
        case_title: 'contain katakana sa-so case',
        text: 'ローソン',
        expected: 'ローション'
      },
      {
        case_no: 3,
        case_title: 'not contain convert target case',
        text: 'あいうえお',
        expected: 'あいうえお'
      }
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          message[:text] = c[:text]
          action = Ruboty::Moromizato::Actions::Convert.new(message)

          # -- when --
          actual = action.send(:convert)

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(_c)
        # implement each case before
      end

      def case_after(_c)
        # implement each case after
      end
    end
  end
end
# rubocop:enable LineLength, UnusedMethodArgument
