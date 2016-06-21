require_relative("../lib/lex.rb")


describe Lexiconomitron do 
before :each do 
	@lexi = Lexiconomitron.new
end
  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end 
    it "reverses string, removes t, returns first and last words" do
      expect(@lexi.shazzam("great scott!")).to eq("aerg !ocs")
    end
    it "finding three char or less in a string" do
      expect(@lexi.oompa_loompa("This is a string man")).to eq("his is a man")	 
    end   
  end
end