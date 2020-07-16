require_relative "../lib/crypto"

describe "Crypto fonction" do
    it "Crypto should display an array without nil." do
        expect(crypto.is_a? Array).to eq true
        expect((crypto)).not_to eq nil
    end
    it "Crypto key and value are string." do
        expect((crypto[0]).is_a? String).to eq true
        expect((crypto[1]).is_a? String).to eq true
        expect(((crypto[0].values(1)).is_a? Numeric)).to eq true
        expect(((crypto[0].key(0).is_a? Numeric))).to eq true
    end
    it "Crypto must have string keys Bitcoin and Ethereum." do 
        
        expect((crypto[0]).key?("Bitcoin")).to eq true
        expect((crypto[1]).key?("Ethereum")).to eq true
    end
    it "Crypto must have 200 elements." do
        expect(crypto.count).to eq(200)
    end
end