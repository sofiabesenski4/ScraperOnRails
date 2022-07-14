class Webpage < ApplicationRecord
  def body
    Nokogiri::HTML(raw_html).css("body").to_s
  end

  def head
    Nokogiri::HTML(raw_html).xpath("//head").to_s
  end
end
