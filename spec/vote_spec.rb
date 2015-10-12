describe Vote do
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        # your expectations here
        expect( Vote.create(value: 1) ).to eq(true)
        expect( Vote.create(value: -1) ).to eq(true)
        expect( Vote.create(value: 0) ).to eq(false)
      end
    end
  end
end