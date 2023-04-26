require 'mechanize'

URL = "https://suginami-premium.com/search.php"

BASE_BODY = "search_name=&search_job_type=&search_area=&page="

HEADERS = {
	'authority' =>  "suginami-premium.com",
    'method' =>  "POST",
    'path' => "/search.php",
    'scheme' => "https",
    'accept' => "*/*",
    'accept-encoding' => "gzip",
    'accept-language' => "ja,en-US;q=0.9,en;q=0.8",
    'content-length' => "49",
    'content-type' => "application/x-www-form-urlencoded; charset=UTF-8",
    'origin' => "https://suginami-premium.com",
    'referer' => "https://suginami-premium.com/",
    'x-requested-with' => "XMLHttpRequest"
}


def get_response(page_num)
    
    agent = Mechanize.new
    #response = agent.post(URL,BASE_BODY+page_num.to_s)
    #p response.header
    response = agent.post(URL,BASE_BODY+page_num.to_s,HEADERS)
    
    return response
end