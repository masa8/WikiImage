require 'test/unit'
require 'wiki_image'
class WikiImageTest < Test::Unit::TestCase 
  def test_wiki_image
     images = WikiImage.new("Banksy").getImages
     images.each { |item| item.each {|k,v| puts v if k == :url }}
     o = WikiImageLoader.new
     o.dl( "test", images )
     assert_not_nil(images )
  end

  def test_wiki_image_first
    WikiImage.new("Bansky").getImages(:globalusage).first
  end

  def test_wiki_image_list
     WikiImage.new("Bansky").imagelist
  end
  def test_wiki_image_stockpile
    obj = WikiImage.new("Bansky")
    obj.getImages(:imageinfo)
    obj.getImages(:globalusage)
    everything=obj.stockpile
  end
  def test_show_url
    objs = WikiImage.new("Bansky").getImages
  end
  
  def test_dl
     infos = WikiImage.new("Bansky").getImages
     loader = WikiImageLoader.new
     #loader.dl( "Bansky", infos)
  end
end

