class Team
  # オブジェクトの変数（値）
  attr_accessor :name, :win, :lose, :draw

  # 初期化用の特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # オブジェクトのメソッド（処理）
  def calc_win_rate
    self.win.to_f / (self.win + self.lose)
  end

  def show_team_result
    puts self.name + " の2020年の成績は " + self.win.to_s + "勝 " +  self.lose.to_s + "敗 " + self.draw.to_s + "分、勝率は " + self.calc_win_rate.to_s + "です。"
  end
end

team = []
team[0] = Team.new('Giants',  67, 45,  8)
team[1] = Team.new('Tigers',  60, 53,  7)
team[2] = Team.new('Dragons', 60, 55,  5)
team[3] = Team.new('BayStars',56, 58,  6)
team[4] = Team.new('Carp',    52, 56, 12)
team[5] = Team.new('Swwalows',41, 69, 10)

6.times do |i|
  team[i].show_team_result
end