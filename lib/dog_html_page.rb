require "erb_generator"

class DogHTMLPage

  def initialize (names = [])
    @names = names
  end

  def self.all; ObjectSpace.each_object(self).to_a end
  def self.count; all.length end

  def title
    #Count number of dogs in hash and return length in h1 tag

    number_dogs = "<h1>There are #{@names.length} dogs</h1>"
    if @names.length == 0
      p "<h1>There are no dogs</h1>"
    else
      p number_dogs
    end

  end

  def list
    names = "<ul> #{@names.each{|k, v| "<li>#{v}</li>"}}</ul>"
    p names
  end

end