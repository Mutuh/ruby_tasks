class XmlDocument

def initialize(document = false)
  @doc = document
end

def method_missing(name, *args, &block)
  if block_given?
    if @doc
        result = "<#{name}>\n"
        result << block.call.split("\n").map { |line| line = "  " + line }.join("\n")+"\n"
        result << "</#{name}>\n"
      else
        "<#{name}>#{block.call}</#{name}>"
      end
  else
    if args.length > 0 and args.last.is_a?(Hash)
      hash_value =args.last.map { |key,value| "#{key}='#{value}'" }.join(' ')
	  "<#{name} #{hash_value}/>"
    else
      result = ""
      result << "<#{name}/>"
    end
  end
end

end