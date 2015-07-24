require 'sinatra'



get '/' do
    @data = {
        "name"=> "Tech menters camp",
        "date"=> "7/24",
        "list"=> [
          {
            "username"=> "kiyo",
            "likelist"=> [
              {
                "like"=> true,
                "food"=> "jozo",
                "category"=> 0
              },
              {
                "like"=> true,
                "food"=> "beer",
                "category"=> 0
              }
            ]
          },
          {
            "username"=> "taku",
            "likelist"=> [
              {
                "like"=> true,
                "food"=> "jozo",
                "category"=> 0
              }
            ]
          }
        ]
      }

    erb :index
end

get '/event' do
    @data = {"name"=>"まっちーのおごりで叙々苑","date"=>"2015.8.25","list"=>[{"username"=>"中山拓也","likelist"=>[{"food"=>"ビール","category"=>0},{"food"=>"ラム酒","category"=>0},{"food"=>"ブランデー","category"=>0},{"food"=>"ワイン","category"=>0},{"food"=>"日本酒","category"=>0},{"food"=>"焼酎","category"=>0},{"food"=>"ウィスキー","category"=>0},{"food"=>"キルシュ","category"=>0},{"food"=>"ウォッカ","category"=>0},{"food"=>"カシス","category"=>0},{"food"=>"シャルトルーズ","category"=>0},{"food"=>"キュラソー","category"=>0},{"food"=>"豚肉","category"=>1},{"food"=>"ヤギ肉","category"=>1},{"food"=>"ワニ肉","category"=>1},{"food"=>"土物類","category"=>2},{"food"=>"果物類","category"=>2},{"food"=>"きのこ類","category"=>2},{"food"=>"山菜類","category"=>2}],"unlikelist"=>[]},{"username"=>"金城廣太","likelist"=>[{"food"=>"ワニ肉","category"=>1},{"food"=>"ビール","category"=>0}],"unlikelist"=>[{"food"=>"ウォッカ","category"=>0},{"food"=>"ウィスキー","category"=>0}]},{"username"=>"上原優里奈","likelist"=>[{"food"=>"カンペリ","category"=>0},{"food"=>"シャルトルーズ","category"=>0},{"food"=>"カシス","category"=>0},{"food"=>"ウォッカ","category"=>0},{"food"=>"ヤギ肉","category"=>1},{"food"=>"ビール","category"=>0}],"unlikelist"=>[{"food"=>"ウィスキー","category"=>0}]}],"likeranking"=>[{"food"=>"ビール","category"=>0,"percentage"=>100},{"food"=>"ウォッカ","category"=>0,"percentage"=>66},{"food"=>"カシス","category"=>0,"percentage"=>66}],"unlikeranking"=>[{"food"=>"ビール","category"=>0,"percentage"=>100},{"food"=>"ウォッカ","category"=>0,"percentage"=>66},{"food"=>"カシス","category"=>0,"percentage"=>66}]}
    erb :event
end

get '/mypage' do
    @data = {"username"=>"中山拓也","likelist"=>[{"food"=>"ビール","category"=>0},{"food"=>"ラム酒","category"=>0},{"food"=>"ブランデー","category"=>0},{"food"=>"ワイン","category"=>0},{"food"=>"日本酒","category"=>0},{"food"=>"焼酎","category"=>0},{"food"=>"ウィスキー","category"=>0},{"food"=>"キルシュ","category"=>0},{"food"=>"ウォッカ","category"=>0},{"food"=>"カシス","category"=>0},{"food"=>"シャルトルーズ","category"=>0},{"food"=>"キュラソー","category"=>0},{"food"=>"豚肉","category"=>1},{"food"=>"ヤギ肉","category"=>1},{"food"=>"ワニ肉","category"=>1},{"food"=>"土物類","category"=>2},{"food"=>"果物類","category"=>2},{"food"=>"きのこ類","category"=>2},{"food"=>"山菜類","category"=>2}],"unlikelist"=>[],"eventlist"=>[{"EventId"=>1,"name"=>"Tech menters camp","date"=>"2015.7.24"},{"EventId"=>2,"name"=>"まっちーのおごりで叙々苑","date"=>"2015.8.25"}]}
    erb :mypage
end

get '/new' do
    erb :new
end