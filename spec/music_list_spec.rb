require 'music_list'

RSpec.describe MusicList do
    context "Valid" do
        it "Valid Song passes return Happy" do
            list = MusicList.new
            list.add("Happy")
            expect(list.showTracks).to eq ["Happy"]
        end
        it "Should return list of songs" do
            list = MusicList.new
            list.add("Happy")
            list.add("Something")
            list.add("Merry Merry")
            list.add("Hey Jude")
            expect(list.showTracks).to eq ["Happy", "Something", "Merry Merry", "Hey Jude"]
        end 
    end 
    context "Invalid Track" do
        it "Should throw an error" do
            list = MusicList.new
            expect{ list.add(nil) }.to raise_error("Invalid Input")
        end 
        it "Should throw an error" do
            list = MusicList.new
            expect{ list.add(3.25627) }.to raise_error("Invalid Input")
        end 
    end 
end 