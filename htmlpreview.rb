# Title: HTML Preview
# Author: Ole B. https://elomatreb.eu
# Description: A simple plugin to insert frames with a common source into a Jekyll page, for example for code previews/examples.
#
# Usage:
# {% htmlpreview (identifier) %} Where "identifier" is inserted into the configured formatstring.

module Jekyll
  class Htmlpreview < Liquid::Tag

    def initialize(tag_name, identifier, tokens)
      super

      @identifier = identifier
      @format = Jekyll.configuration({})["htmlpreview"]["format"]
      @source = Jekyll.configuration({})["htmlpreview"]["source"]
    end

    def render(context)
      @source = sprintf @source, @identifier
      sprintf @format, @source
    end

    Liquid::Template.register_tag "htmlpreview", self
  end
end
