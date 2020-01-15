require_relative "../citizen.rb"

describe(Citizen) do
  describe "#can_vote?" do
    it "return true if age >= 18" do
      citizen = Citizen.new("Alice", "Cooper", 18)
      expected = citizen.can_vote?
      answer = true
      expect(expected).to eq(answer)
    end

    it "return false if age < 18" do
      citizen = Citizen.new("Alice", "Cooper", 17)
      expected = citizen.can_vote?
      answer = false
      expect(expected).to eq(answer)
    end
  end

  describe "#full_name" do
    it "return 'Alice Cooper'" do
      citizen = Citizen.new("alice", "cooper", 18)
      expected = citizen.full_name
      answer = "Alice Cooper"
      expect(expected).to eq(answer)
    end
  end
end
