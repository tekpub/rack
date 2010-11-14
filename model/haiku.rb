class Haiku
  def initialize
    @poems = [
      "An old silent pond...
      A frog jumps into the pond,
      splash! Silence again.",

      "Sick and feverish
      Glimpse of cherry blossoms
      Still shivering",

      "Without flowing wine
      How to enjoy lovely
      Cherry blossoms",

      "The first soft snow!
      Enough to bend the leaves
      Of the jonquil low",

      "In the cicada's cry
      No sign can foretell
      How soon it must die",

      "In my old home
      which I forsook, the cherries
      are in bloom",

      "A giant firefly:
      that way, this way, that way, this -
      and it passes by",

      "My grumbling wife -
      if only she were here!
      This moon tonight...",

      "From a bathing tub
      I throw water into the lake -
      slight muddiness appears"
      
      ]
  end
  def random
    index = rand(8)+1
    @poems[index].gsub("\n","<br/>")
  end

end