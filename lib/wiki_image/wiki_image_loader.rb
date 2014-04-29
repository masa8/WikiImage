
require 'wiki_image'
require 'open-uri'
require 'uri'


class WikiImageLoader

    # Dl images and name it "KEY_<keyword_to_be_used>_USER_<uploader_of_image>_FILE_<filename>"
    #
    def dl(key, infos)
        return if key == nil or infos == nil
	infos.each { |item| 

                if item[:url]  != nil
 		    uri = URI.parse(item[:url]) 
                    base = File.basename(uri.path)	        
		    filename = "KEY_#{key}_USER_#{item[:user]}_FILE_#{base}" 	
                    open(filename,'wb') do |file|
		        file << open(item[:url]).read
		    end
		end
	}
		
    end

end





