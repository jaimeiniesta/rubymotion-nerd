class QuizController < UIViewController
  def init
    super
    @currentQuestionIndex = 0
    @questions  = ['What is 7 + 7?', 'What is the capital of Vermont?', 'From what is cognac made?']
    @answers    = ['14', 'Montpelier', 'Grapes']
    self
  end

  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor
    @margin = 20

    # Add elements to the view, 2 labels and 2 buttons
    @questionLabel  = addLabel(@questions.first, 50, 40)
    @questionButton = addButton('Show Question', 100, 30)

    @answerLabel    = addLabel('???', 300, 40)
    @answerButton   = addButton('Show Answer', 350, 30)

    # Define actions for buttons
    @questionButton.addTarget(self, action:'questionTapped', forControlEvents:UIControlEventTouchUpInside)
    @answerButton.addTarget(self, action:'answerTapped', forControlEvents:UIControlEventTouchUpInside)
  end

  private

  def addLabel(text, pos_y, height)
    newLabel = UILabel.new
    newLabel.text = text
    newLabel.textAlignment = UITextAlignmentCenter
    newLabel.frame = [[@margin, pos_y], [view.frame.size.width - @margin * 2, height]]
    view.addSubview(newLabel)

    newLabel
  end

  def addButton(text, pos_y, height)
    newButton = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    newButton.setTitle(text, forState:UIControlStateNormal)
    newButton.frame = [[@margin, pos_y], [view.frame.size.width - @margin * 2, height]]
    view.addSubview(newButton)

    newButton
  end

  def questionTapped
    @currentQuestionIndex = (@currentQuestionIndex + 1) % @questions.count

    @questionLabel.text   = @questions[@currentQuestionIndex]
    @answerLabel.text     = '???'
  end

  def answerTapped
    @answerLabel.text = @answers[@currentQuestionIndex]
  end
end
