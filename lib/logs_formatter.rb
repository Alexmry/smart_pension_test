module Formatter
    module Logs

        # access the data from the webserver.log file
        def self.get_data(logs_data)
            # get the logs and store them into an array
            @logs = File.readlines(logs_data)
            # @logs is an array of strings
        end
        # puts "#{Logs.get_data('webserver.log')}"


        # list of webpages with most page views ordered from most pages views to less page views
        def self.most_viewed_webpages(logs_data)
            @logs_array = get_data(logs_data)
            
            pages_views_count = {}
            @logs_array.each do |log|
                page_and_ip = log.split(" ")
                if pages_views_count.key?(page_and_ip[0])
                    pages_views_count[page_and_ip[0]] += 1
                else
                    pages_views_count[page_and_ip[0]] = 1
                end
            end
            # sorting the hash by value
            return pages_views_count.sort_by {|k, v| -v}
        end

        puts "the most viewed page"
        puts "#{Logs.most_viewed_webpages('webserver.log')}"
        
        #list of webpages with most unique page views also ordered
        def self.webpages_with_most_unique_views(logs_data)
            #if ip address unique, unique view. So remove duplicate
            @logs_array = get_data(logs_data)
            
            pages_views_count = {}
            @logs_array.each do |log|
                ip_pages = log.split(" ")
                pages_views_count[ip_pages[1]] = ip_pages[0]
            end

            # from this hash (pages_views_count), I will create a hash of pages / uniques vues
            # to do so, I need to count the number of times a value is repeated in a Hash
            pages_views_count.group_by(&:last).map { |v, a| [v, a.count] }.to_h.sort

        end

        puts "the page with the most unique views"
        puts "#{Logs.webpages_with_most_unique_views('webserver.log')}"

    end
end
