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
    query += "&color=#{CGI.escape(color)}" if color
    query += "&background=#{CGI.escape(background)}" if background
    query += "&size=#{CGI.escape(size)}" if size
    query += "&font-size=#{CGI.escape(font_size)}" if font_size
    query += "&length=#{CGI.escape(length)}" if length
    query += "&rounded=#{CGI.escape(rounded)}" if rounded
    query += "&uppercase=#{CGI.escape(uppercase)}" if uppercase
    query += "&bold=#{CGI.escape(bold)}" if bold
    query += "&format=#{CGI.escape(fmt)}" if fmt

    url + query
  end
end
