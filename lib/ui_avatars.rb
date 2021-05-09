require "cgi"

class UIAvatars
  # Uses https://ui-avatars.com/ to generate colorful avatars for the initials of your name
  #
  # Example:
  #   >> UIAvatars.generateURL(name: "Joe Bloggs", color: "blue")
  #   => "https://ui-avatars.com/api/?name=Joe+Bloggs&color=blue"
  #
  # Arguments:
  #   name: (String)
  #   color: (String)
  #   background: (String)
  #   size: (String)
  #   font-size: (String)
  #   length: (String)
  #   rounded: (String)
  #   uppercase: (String)
  #   bold: (String)
  #   fmt: (String)
  def self.generateURL(name:, color: nil, background: nil, size: nil, font_size: nil, length: nil, rounded: nil, uppercase: nil, bold: nil, fmt: nil)
    url = "https://ui-avatars.com/api/"

    query = "?"
    query += "name=#{CGI.escape(name)}" # name is the only mandatory parameter
    query += "&color=#{color}" if color
    query += "&background=#{background}" if background
    query += "&size=#{size}" if size
    query += "&font-size=#{font_size}" if font_size
    query += "&length=#{length}" if length
    query += "&rounded=#{rounded}" if rounded
    query += "&uppercase=#{uppercase}" if uppercase
    query += "&bold=#{bold}" if bold
    query += "&format=#{fmt}" if fmt

    url + query
  end
end
