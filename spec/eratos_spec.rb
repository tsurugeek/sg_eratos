# require 'spec_helper'

describe "eratos.rb" do
  example "素数が表示されること" do
    expect(`ruby eratos.rb 30`).to eq "2,3,5,7,11,13,17,19,23,29\n"
    expect(`ruby eratos.rb 120`).to eq "2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113\n"
  end

end
