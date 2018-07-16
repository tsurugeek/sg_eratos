# エラトステネスの篩 の実装
# https://ja.wikipedia.org/wiki/%E3%82%A8%E3%83%A9%E3%83%88%E3%82%B9%E3%83%86%E3%83%8D%E3%82%B9%E3%81%AE%E7%AF%A9

#--------------------
# 引数チェック
#--------------------

unless ARGV.size == 1
  puts "引数を１つ指定してください。"
  exit
end

max = ARGV[0].to_i

unless ARGV[0].to_i >= 2
  puts "引数は２以上の整数を指定してくあさい。"
  exit
end


#--------------------
# 実装
#--------------------

# 最大値の平方根
sqrt = Math.sqrt(max)
# 素数リスト
prim_nums = []
# 探索リスト
search_nums = (2..max).to_a

loop do
  i = search_nums.shift
  prim_nums << i

  break if i > sqrt

  search_nums.dup.each do |num|
    search_nums.delete(num) if num % i == 0
  end
end

prim_nums += search_nums
puts prim_nums.join(',')
