require 'calc'

# トップレベルのdescribeはテスト対象のクラスを書いたりする
RSpec.describe Calc do
#RSpec.describe "A calc" do

  # テストごとに実行
  before(:example) do
    @calc = Calc.new
  end

  #before(:context) do
  #  全部のテストの最初に一度だけ
  #end

  # describeは入れ子に出来る
  # テストのグループ分けに使える
  # contextでも同じ
  # context => 状況
  # describe =>　物
  context "when normal mode" do
    it "given 2 and 3, returns 5" do
      #calc = Calc.new
      expect(@calc.add(2,3)).to eq(5)
    end
  end

  context "when advance mode" do
    it "given 5 and 5, returns 10" do
      #calc = Calc.new
      expect(@calc.add(5, 5)).to eq(10)
    end
  end

end
