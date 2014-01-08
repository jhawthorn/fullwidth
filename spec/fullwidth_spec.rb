require 'spec_helper'

describe ".to_fullwidth" do
  subject{ original.to_fullwidth }

  context "simple latin characters" do
    let(:original){ 'Hello, world.' }
    it{ should eq("Ｈｅｌｌｏ，　ｗｏｒｌｄ．") }
  end

  context "whole alphabet" do
    let(:original){ 'The quick brown fox jumps over the lazy dog' }
    it{ should eq("Ｔｈｅ　ｑｕｉｃｋ　ｂｒｏｗｎ　ｆｏｘ　ｊｕｍｐｓ　ｏｖｅｒ　ｔｈｅ　ｌａｚｙ　ｄｏｇ") }
  end

  context "kanji" do
    let(:original){ '鋸' }
    it{ should eq('鋸') }
  end

  context "half-width kana" do
    let(:original) do
      <<-EOS
  ｡ ｢ ｣ ､ ･ ｦ ｧ ｨ ｩ ｪ ｫ ｬ ｭ ｮ ｯ
ｰ ｱ ｲ ｳ ｴ ｵ ｶ ｷ ｸ ｹ ｺ ｻ ｼ ｽ ｾ ｿ
ﾀ ﾁ ﾂ ﾃ ﾄ ﾅ ﾆ ﾇ ﾈ ﾉ ﾊ ﾋ ﾌ ﾍ ﾎ ﾏ
ﾐ ﾑ ﾒ ﾓ ﾔ ﾕ ﾖ ﾗ ﾘ ﾙ ﾚ ﾛ ﾜ ﾝ ﾞ ﾟ
EOS
    end

    it do
      should eq(<<-EOS)
　　。　「　」　、　・　ヲ　ァ　ィ　ゥ　ェ　ォ　ャ　ュ　ョ　ッ
ー　ア　イ　ウ　エ　オ　カ　キ　ク　ケ　コ　サ　シ　ス　セ　ソ
タ　チ　ツ　テ　ト　ナ　ニ　ヌ　ネ　ノ　ハ　ヒ　フ　ヘ　ホ　マ
ミ　ム　メ　モ　ヤ　ユ　ヨ　ラ　リ　ル　レ　ロ　ワ　ン　゛　゜
EOS
    end
  end
end
