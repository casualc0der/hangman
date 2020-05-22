require_relative './lib/hangman'

banner = File.read("./assets/banner.txt")
print banner.force_encoding(Encoding::UTF_8)
game = Hangman.new(Time.now)
game.start