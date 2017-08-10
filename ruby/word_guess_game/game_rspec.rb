require_relative 'game_rspec.rb'

describe WordGame do
  let(:game) {WordGame.new("new_word")}

  it "stores the new secret word on initialization" do
    expect(game.letter_check("letter")).to eq "letter"
  end

  it "converts out inputed word into array of letters" do
    expect(game.winner).to eq "new_word".split(" ")
  end

end