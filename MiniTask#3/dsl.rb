
class MDHtml
  @@output = ''
  def initialize(&block)
    instance_eval &block
  end

  def method_missing(m, *args, &block)
    puts m
    puts *args
  end

  def head(&block)
    @@output << "<head>\n"
    instance_eval &block
    @@output << "</head>\n\n"
  end

  def meta(**content)
    if content.keys.join == "charset"
      @@output << "\t<meta #{content.keys[0]}=\"#{content.values[0]}\">\n"

    else
      @@output << "\t<meta name=\"#{content.keys[0]}\" content=\"#{content.values[0]}\">\n"
    end
  end

  def link(link = {})
    @@output << "\t<link rel=\"#{link.keys[0]}\" href=\"#{link.values[0]}\">\n"
  end

  def title(title)
    @@output << "\n\n\t<title>#{title}"
    @@output << "</title>\n"
  end

  def div(&block)
    @@output << "\t<div>"
    @@output << block.call()
    @@output << "</div>"

  end

  def script(script = {})
    @@output << "\n\t<script #{script.keys[0]}=\"#{script.values[0]}\"> </script>"
  end

  def body(&block)
    @@output << "<body>\n"
    instance_eval &block
    @@output << "\n</body>\n\n"
  end

  def html(&block)
    @@output << "<!doctype html>\n\n"

    @@output << "<html>\n"
    instance_eval &block

    @@output << "</html>"

  end

  def to_s
    puts @@output
  end
end


MDHtml.new do
  html do
    head do
      meta charset: "utf-8"
      title "The HTML5 Template"
      meta description: "The HTML5 Template"
      meta author: "MobiDev"
      link stylesheet: "css/styles.css?v=1.0"
    end


    body do
      div do
        "Hello World"
      end
      script src:"js/scripts.js"
    end
  end
end.to_s
