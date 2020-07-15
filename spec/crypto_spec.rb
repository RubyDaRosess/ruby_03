require_relative "../lib/crypto"

describe "the dark_trader fonction" do
    it "should display an array" do
        expect((crypto)).to be_a_kind_of Array 
        expect((crypto)).not_to eq nil
    end
    it "should at least contain Bitcoin and Ethereum" do 
        
        expect((crypto[0]).key?("Bitcoin")).to eq true
        expect((crypto[1]).key?("Ethereum")).to eq true
    end
end