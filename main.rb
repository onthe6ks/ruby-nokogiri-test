require './post'
require './output'

#全店舗数（webサイトから確認）
#MAX_INFO = 16
MAX_INFO = 1798 #2023/4/26時点

#1ページあたりの店舗数 意図的に少数点を入れる
PAGE_INFO = 15.0

#LOOP数
LOOP_NUM = (MAX_INFO / PAGE_INFO).ceil

#1ページあたりの最低待機時間
BASE_SLEEP_TIME = 3

#1ページあたりのランダム待機時間（追加）
RANDOM_SLEEP_TIME = 3


for page in 1..LOOP_NUM do
    response = get_response(page)

    outputInfo(response)
    
    #負荷が高くならないように時間をあける
    sleep(BASE_SLEEP_TIME + rand(RANDOM_SLEEP_TIME))
end

