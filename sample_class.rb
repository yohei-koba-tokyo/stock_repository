class Review 
  def initialize(reviews)      #  インスタンス生成と同時に実行される便利な"initialize"
    puts "タイトルを入力してください"
    title = gets.chomp
    puts "ジャンルを入力してください"
    genre = gets.chomp
    puts "感想を入力してください"
    impression = gets.chomp
    review = {title: title, genre: genre, impression: impression}
    reviews << review
  end
end

reviews = []
while true do
    if reviews.empty?
      puts "  -- reviews --"
      puts "     Nothing   "
      puts "  -- --   -- --"
    else
      puts "  -- reviews --"
      reviews.reverse.each do |rev|  #each文を逆に回したい時はreverse!
        puts "#{rev[:title]}(genre:#{rev[:genre]})「#{rev[:impression]}」"
      end
      puts "  -- --   -- --"
    end
  puts "<< 以下メニューより選択してください >>"
  puts "[1]レビューを投稿する"
  puts "[2]終了する"
  input = gets.to_i
  case input
    when 1
      review = Review.new(reviews)  #どうやらクラスからインスタンスを生成するときにも引数が渡せるっぽい。
    when 2
      exit
    else
      puts "     -- caution! --"
      puts "数字の1 ~ 3で選択してください"
      puts "     -- --    -- --"
  end
end