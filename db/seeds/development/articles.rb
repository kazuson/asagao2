body =
  "Morning Gloryが４対2でSunflowerに勝利\n"+
  "2回表、６番渡辺の２塁打から７番山田、８番高橋の連続タイムリーで２点先制"+
  "９回表、ランナー一二塁で２番田中の２塁打で２点を挙げ、だめ押ししました\n"+
  "投げては初先発の山本が７回を２失点に抑え、伊藤、中村とつないで逃げ切りました"

0.upto(9) do |idx|
  Article.create(
  title: "練習試合の結果#{idx}",
  body: body,
  released_at: 8.days.ago.advance(days:idx),
  expired_at: 3.days.ago.advance(days:idx),
  member_only: (idx % 3 == 0)
  )
end
