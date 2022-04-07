class Form::ThreemonthsGoalCollection < Form::Base
  FORM_COUNT = 4
  attr_accessor :threemonths_goals

  def initialize(attributes = {})
    super attributes
    self.threemonths_goals = FORM_COUNT.times.map { Form::ThreemonthsGoal.new() } unless self.threemonths_goals.present?
  end
  
  # 上でsuper attributesとしているので必要
  def threemonths_goals_attributes=(attributes)
    self.threemonths_goals = attributes.map { |_, v| ThreemonthsGoal.new(v) }
  end

  def valid?
    valid_threemonths_goals = target_threemonths_goals.map(&:valid?).all?
    super && valid_threemonths_goals
  end
  
  def save
    ThreemonthsGoal.transaction do
      self.threemonths_goals.map do |t|
        if t.availability # ここでチェックボックスにチェックを入れている商品のみが保存される
          t.save
        end
      end
    end
      return true
    rescue => e
      return false
    end
  end