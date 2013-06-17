class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end
  
  def add(entry)
    entry.class == Hash ? @entries.merge!(entry) : @entries.merge!(entry => nil)
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include?(key)
    self.keywords.include?(key)
  end
  
  def find string
    @entries.select {|key, val| key =~ /^#{string}/}
  end
  
  def printable
    keywords.inject([]) do
	|print_string, key| print_string << "[#{key}] \"#{@entries[key]}\""
	end.join("\n")
  end
  
end  