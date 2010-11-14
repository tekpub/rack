class Quotes
  def initialize
    @quotes = [
      "Wrong! It's the most amazing, fabulous, sensational gum in the whole world.",

      "Oh, well, then you know all about it and what a terrible country it is. Nothing but desolate wastes and fierce beasts. And the poor little Oompa Loompas were so small and helpless, they would get gobbled up right and left. A Wangdoodle would eat ten of them for breakfast and think nothing of it. And so, I said, 'Come and live with me in peace and safety, away from all the Wangdoodles, and Hornswogglers, and Snozzwangers, and rotten, Vermicious Knids.'",

      "Hey, Daddy, *I* want an Oompa Loompa! I want you to get me an Oompa Loompa right away",

      "Invention, my dear friends, is 93% perspiration, 6% electricity, 4% evaporation, and 2% butterscotch ripple.",

      "I've just decided to switch our Friday schedule to Monday, which means that the test we take each Friday on what we learned during the week will now take place on Monday before we've learned it. But since today is Tuesday, it doesn't matter in the slightest. Pencils ready! ",

      "There's no earthly way of knowing / Which direction we are going / There's no knowing where we're rowing / Or which way the river's flowing / Is it raining? / Is it snowing? / Is a hurricane a-blowing? / Not a speck of light is showing / So the danger must be growing / Are the fires of hell a-glowing? / Is the grisly reaper mowing? / Yes! The danger must be growing / For the rowers keep on rowing / And they're certainly not showing / Any signs that they are slowing! ",

      "The strawberries taste like strawberries, and the snozzberries taste like snozzberries. ",

      "*We* are the music makers... and *we* are the dreamers of dreams. ",

      "Oompa loompa doompadee doo / I've got another puzzle for you / Oompa loompa doompadee dee / If you are wise you'll listen to me / Who do you blame when your kid is a brat / Pampered and spoiled like a Siamese cat / Blaming the kids is a lie and a shame / You know exactly who's to blame / The mother and the father / Oompa loompa doompadee dah / If you're not spoiled then you will go far / You will live in happiness, too / Like the Oompa Loompa doompadee doo "
      
      ]
  end
  def random
    index = rand(8)+1
    @quotes[index].gsub("\n","<br/>")
  end

end