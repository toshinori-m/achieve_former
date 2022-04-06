class Form::ThreemonthsGoalCollection < Form::Base
  FORM_COUNT = 4
  attr_accessor :threemonths_goals

  def initialize(attributes = {})
    super attributes
    self.threemonths_goals = FORM_COUNT.times.map { ThreemonthsGoal.new() } unless self.threemonths_goals.present?
  end
  
  # 上でsuper attributesとしているので必要
  def threemonths_goals_attributes=(attributes)
    self.threemonths_goals = attributes.map { |_, v| ThreemonthsGoal.new(v) }
  end

  def save
    # 実際にやりたいことはこれだけ
    # self.threemonths_goals.map(&:save!)

    # 複数件全て保存できた場合のみ実行したいので、transactionを使用する
    ThreemonthsGoal.transaction do
      self.threemonths_goals.map(&:save!)
    end
      return true
    rescue => e
      return false
  end
end
