# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#True False Template
question = Question.create(title: "<p>The Amazon Rainforest is located in Asia.</p>", question_type: 'true_false', bank: "geography")
TrueFalse.create(question_id: question.id, correct_answer: false)

question = Question.create(title: "<p>Shakespeare's play \"Hamlet\" is a comedy</p>", question_type: 'true_false', bank: "literature")
TrueFalse.create(question_id: question.id, correct_answer: false)

#Multiple Choice Template
question = Question.create(title: "<p>Which of the following is a greenhouse gas?</p>", question_type: 'multiple_choice', bank: "science")
MultipleChoice.create(question_id: question.id, option: 'Oxygen', is_correct: false)
MultipleChoice.create(question_id: question.id, option: 'Carbon dioxide', is_correct: true)
MultipleChoice.create(question_id: question.id, option: 'Nitrogen', is_correct: false)
MultipleChoice.create(question_id: question.id, option: 'Hydrogen', is_correct: false)

question = Question.create(title: "<p>What is the powerhouse of the cell?</p>", question_type: 'multiple_choice', bank: "science")
MultipleChoice.create(question_id: question.id, option: 'Nucleus', is_correct: false)
MultipleChoice.create(question_id: question.id, option: 'Mitochondria', is_correct: true)
MultipleChoice.create(question_id: question.id, option: 'Endoplasmic reticulum', is_correct: false)
MultipleChoice.create(question_id: question.id, option: 'Golgi apparatus', is_correct: false)

question = Question.create(title: "<p>Who was the first President of the United States?</p>", question_type: 'multiple_choice', bank: "history")
MultipleChoice.create(question_id: question.id, option: 'Thomas Jefferson', is_correct: false)
MultipleChoice.create(question_id: question.id, option: 'Abraham Lincoln', is_correct: false)
MultipleChoice.create(question_id: question.id, option: 'George Washington', is_correct: true)
MultipleChoice.create(question_id: question.id, option: 'John Adams', is_correct: false)

question = Question.create(title: "<p>If x + 8 = 15, what is the value of x?</p>", question_type: 'multiple_choice', bank: "math")
MultipleChoice.create(question_id: question.id, option: '6', is_correct: false)
MultipleChoice.create(question_id: question.id, option: '7', is_correct: true)
MultipleChoice.create(question_id: question.id, option: '8', is_correct: false)
MultipleChoice.create(question_id: question.id, option: '9', is_correct: false)

#Multiple Answer Template
question = Question.create(title: "<p>Consider a country with a tropical climate. Which of the following are likely characteristics of this region? (Select all that apply)</p>",
 question_type: 'multiple_answers', bank: "geography")
MultipleAnswer.create(question_id: question.id, option: 'Seasonal variations in temperature', is_correct: false)
MultipleAnswer.create(question_id: question.id, option: 'High biodiversity', is_correct: true)
MultipleAnswer.create(question_id: question.id, option: 'Low precipitation', is_correct: false)
MultipleAnswer.create(question_id: question.id, option: 'Consistent, warm temperatures throughout the year', is_correct: true)

question = Question.create(title: "<p>Select the factors of 24.</p>", question_type: 'multiple_answers', bank: "math")
MultipleAnswer.create(question_id: question.id, option: '3', is_correct: false)
MultipleAnswer.create(question_id: question.id, option: '8', is_correct: true)
MultipleAnswer.create(question_id: question.id, option: '6', is_correct: false)
MultipleAnswer.create(question_id: question.id, option: '5', is_correct: true)

#Essay templates
question = Question.create(title: "<p>Analyze the theme of power and its effects on characters in George Orwell's \"Animal Farm.\" 
How does the author use allegory to convey a political message?</p>", question_type: 'essay', bank: "literature")

question = Question.create(title: "<p>Analyze the causes and consequences of a significant event in world history, 
such as the Industrial Revolution or the Renaissance.</p>", question_type: 'essay', bank: "history")
