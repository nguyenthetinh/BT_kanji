require "spec_helper"

#TODO: TDD
describe "number_kanji" do
  context "when 2" do
    it { number_kanji(2).should == "二" }
  end

  context "when 1000" do
    it { number_kanji(1000).should == "一千" }
  end

  context "when 9999" do
    it { number_kanji(9999).should == "九千九百九十九" }
  end

  context "when 10000" do
    it { number_kanji(10000).should == "一万" }
  end

  context "when 900000" do
    it { number_kanji(900000).should == "九十万" }
  end

  context "when 11111111" do
    it { number_kanji(11111111).should == "一千一百十一万一千一百十一" }
  end

  context "when 99999999" do
    it { number_kanji(99999999).should == "九千九百九十九万九千九百九十九" }
  end

  context "when 100000000" do
    it { number_kanji(100000000).should == "一億" }
  end

  context "when 9000000000" do
    it { number_kanji(9000000000).should == "九十億" }
  end

  context "when 111111111111" do
    it { number_kanji(111111111111).should == "一千一百十一億一千一百十一万一千一百十一" }
  end

  context "when 999999999999" do
    it { number_kanji(999999999999).should == "九千九百九十九億九千九百九十九万九千九百九十九" }
  end

  context "when 100000000000" do
    it { number_kanji(100000000000).should == "一千億" }
  end

end


describe "kanji_number" do

  context "when 百" do
    it { kanji_number("百").should == 100 }
  end

  context "when 三" do
    it { kanji_number("三").should == 3 }
  end

  context "when 四" do
    it { kanji_number("四").should == 4 }
  end

  context "when 五" do
    it { kanji_number("五").should == 5 }
  end

  context "when 六" do
    it { kanji_number("六").should == 6 }
  end

  context "when 七" do
    it { kanji_number("七").should == 7 }
  end

  context "when 八" do
    it { kanji_number("八").should == 8 }
  end

  context "when 九" do
    it { kanji_number("九").should == 9 }
  end

  context "when 十" do
    it { kanji_number("十").should == 10 }
  end
end
