RSpec.describe Agents do
  it "has a version number" do
    expect(Agents::VERSION).not_to be nil
  end
  
  describe "randomizes a correct iPhone user agent" do
    let(:user_agent) { Agents.random_user_agent(:phones, :iphone) }
    
    it "should correctly identify the user agent as being an iOS device" do
      expect(Agents.runs_ios?(user_agent)).to eq(true)
    end
  
    it "should correctly identify the user agent as being an iPhone" do
      expect(Agents.is_iphone?(user_agent)).to eq(true)
    end
  
    it "should correctly identify the user agent as not being an iPad" do
      expect(Agents.is_ipad?(user_agent)).to eq(false)
    end
  end
end
