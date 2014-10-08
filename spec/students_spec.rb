require 'student'

describe Student do
    let(:student){Student.new}
    it "does not have an award" do
      expect(student).to be false
    end

    it "can have badges awarded" do
        student.award :unixoid, :rubyist
        expect(student).to have_unixoid
    end

    it "can have badges de-awarded" do
      student.award :unixoid
      student.awards = []
      expect(student.has_unixoid?).to be false
    end

    it "still doesn't know what a potatoe is" do
      expect{ student.potatoe }.to raise_error
      expect( student.has_potatoe? ).to be false
    end
end