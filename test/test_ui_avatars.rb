require "minitest/autorun"
require "ui_avatars"

class UIAvatarsTest < Minitest::Test
  def test_nameonly
    assert_equal "https://ui-avatars.com/api/?name=Joe+Bloggs",
      UIAvatars.generateURL(name: "Joe Bloggs")
  end

  def test_with_options1
    assert_equal "https://ui-avatars.com/api/?name=Joe+Bloggs&color=blue&background=white&size=128&rounded=true&format=svg",
      UIAvatars.generateURL(name: "Joe Bloggs", color: "blue", background: "white", size: 128, rounded: true, fmt: "svg")
  end

  def test_with_options2
    assert_equal "https://ui-avatars.com/api/?name=Joe+Bloggs&font-size=0.33&length=2&uppercase=false&bold=false",
      UIAvatars.generateURL(name: "Joe Bloggs", font_size: "0.33", length: 2, uppercase: "false", bold: "false")
  end

  def test_name_missing
    assert_raises ArgumentError do
      UIAvatars.generateURL
    end
  end
end
