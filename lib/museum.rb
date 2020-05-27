require "./lib/patron"
require './lib/museum'
require './lib/exhibit'

class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end



# I wasted so much time trying ot get this to work.
# I missed a "_" in my test which cost me so much time trying to find.
# After I fixed that issue, I was already nearly out of time.
#
  def recommend_exhibits(patron)
    recommend = []
    @exhibits.each do |exhibit|
      if patron.interests.include?(exhibit)
        recommend << exhibit
        #require "pry"; binding.pry
      end
    end
    recommend
  end
end
