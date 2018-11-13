require 'calc'

# トップレベルのdescribeはテスト対象のクラスを書いたりする
# この場合、Calcクラスのインスタンスをsubjectで代用することが可能
RSpec.describe Calc do
#RSpec.describe "A calc" do

  # 以下のように記述するとCalcクラスのインスタンスをローカル変数calcとして使える
  # subjectだとテストが長くなった場合わかりづらいのでこちらが推奨
  subject(:calc) { Calc.new }


  # テストごとに実行
  # ただし、なるべくexampleの中ではインスタンス変数を使わない方がいいとされている
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
      expect(subject.add(2,3)).to eq(5)
    end
  end

  context "when advance mode" do
    # itはexample, specifyで書き換え可能
    # 自然な文になるものを使えばいい
    # itに渡す文章は省略可能
    #it {
    #  expect(@calc.add(5, 5)).to eq(10)
    #}
    it "given 5 and 5, returns 10" do
      #calc = Calc.new
      expect(calc.add(5, 5)).to eq(10)
    end

    it "given 5 and 5, not returns 5" do
      expect(@calc.add(5, 5)).not_to eq(5)
    end

    it "3 is multiple of three" do
      expect(@calc.multiple_of_3?(3)).to be true
    end

    it "5 is not multiple of three" do
      expect(@calc.multiple_of_3?(5)).to be false
    end

    it "17 is greater than 10" do
      expect(17).to be > 10
    end

    it "5 is between 1 and 10" do
      expect(5).to be_between(1, 10) # 1, 10を含む
      expect(5).to be_between(1, 10).exclusive # 1, 10を含まない
    end

    # メソッドがあるかないかのマッチャー
    it "should have add method" do
      expect(@calc).to respond_to(:add) # メソッド名はシンボルで渡す
    end

    # ?付きのメソッドの場合、以下のように2パターン記述の仕方がある
    it "should be integer" do
      expect(@calc.add(2, 3).integer?).to be true
      expect(@calc.add(2, 3)).to be_integer
    end

    # itにブロックを渡さないと、そのテストはペンディングになる
    it "pending"

    # ビルトインマッチャーの一覧
    # https://relishapp.com/rspec/rspec-expectations/v/3-8/docs/built-in-matchers
  end

end
