# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Category.delete_all
# Plays.delete_all
Question.delete_all
Answer.delete_all
Lesson.delete_all

u1 = User.create({username: "Admin", password: "007Bond"})

l1 = Lesson.create({content: "Integration managemnt is the practice of making certain that every part of the project is coordinated. The Project charter starts the project. This include high level requirements/ milestones of the shedule. Includes a summary level preliminary project budget, but does not include the project details. Inputs: - SOW, - Business Case, - Project Management Plan.", category_id: 1})
l2 = Lesson.create({content: "Scope management defines the need, to set stakeholder expectations, to deliver to the expectations, to manage changes, and to minimize surprise so that the product will ulltimatelyjbe accepted. The scope is the work neede to succesfully complete the project and only that work.", category_id: 2})
l3 = Lesson.create({content: "Time management defines how everything will go and it include seven processes. 1) Plan Schedule Management, 2) Defines Activities, 3) Sequence Activities, 4) Estimate Activity Resources, 5) Estimate Activity Duration, 6) Develop Schedule, 7) Control Schedule.", category_id: 3})
l4 = Lesson.create({content: "Cost management determins the high-level budgets, prieor to the known costs. A cost estimate should be well defined for each activities and this estimate should be built from the  bottom-up.", category_id: 4})
l5 = Lesson.create({content: "Risk management is using information, analysis to try to quantify all the possible threat through out the process. During this process a Risk management plan is created, for all the possible risks and with the action plan, how to handle them, when any of them happens.", category_id: 5})
l6 = Lesson.create({content: "Quality management is consist of three processes: 1) Plan Qulaity Management, 2) Perform Quality Assurance, 3) Control Quality", category_id: 6})
l7 = Lesson.create({content: "HR management defines all the project roles and responsibilities. During this process the HR Management Plan, which include all the information on how the project team will be selected, managed, trained, and motivated through out the project.", category_id: 7})
l8 = Lesson.create({content: "Communications management include all task related to managing project information.", category_id: 8})
l9 = Lesson.create({content: "Procurement managment include the set of processes related to obtaining goods, services, or scope from outside the organization.", category_id: 9})
l10 = Lesson.create({content: "Stakeholder management is focused on creating and maintaining a satisfacory realtionship between stakeholders, to ensure effective reltionship through out the project life cycle.", category_id: 10})
l11 = Lesson.create({content: "Ethics include all the ethical behavour required by the company's code of conduct and universal ethics principles.", category_id: 11})

cat1 = Category.create({category: "Integration Management"})
cat2 = Category.create({category: "Scope Management"})
cat3 = Category.create({category: "Time Management"})
cat4 = Category.create({category: "Cost Management"})
cat5 = Category.create({category: "Risk Management"})
cat6 = Category.create({category: "Quality Management"})
cat7 = Category.create({category: "HR Management"})
cat8 = Category.create({category: "Communications Management"})
cat9 = Category.create({category: "Procurement Management"})
cat9 = Category.create({category: "Stakeholder Management"})
cat9 = Category.create({category: "Ethics"})

q1 = Question.create({question: "Which process formally authorizes the project?", correct_answer_id: 2, category_id: 1, lesson_id:1 })
q2 = Question.create({question: "Develop project charter is part of which process group?", correct_answer_id: 5, category_id: 1, lesson_id: 1})
q3 = Question.create({question: "John Smith is a Project Manager for XYZ consultants. He has been asked to help choose one of the four potential project candidates. The management used Payback period technique for project selection. Which of the following projects should John recommend to the management.", correct_answer_id: 11, category_id: 1, lesson_id: 1})
q4 = Question.create({question: "Completion of a product scope is measured against: ", correct_answer_id: 16, category_id: 2, lesson_id: 2})
q5 = Question.create({question: "All of the below are inputs to Define Scope process EXCEPT", correct_answer_id: 17, category_id: 2, lesson_id: 2})

a1 = Answer.create({text: "Develop project management plan", question_id: 1})
a2 = Answer.create({text: "Develop project charter", question_id: 1})
a3 = Answer.create({text: "Receive project approval", question_id: 1})
a4 = Answer.create({text: "Develop preliminary project statement", question_id: 1})
a5 = Answer.create({text: "Initiation", question_id: 2})
a6 = Answer.create({text: "Planning", question_id: 2})
a7 = Answer.create({text: "Executing", question_id: 2})
a8 = Answer.create({text: "Monitoring and Controlling", question_id: 2})
a9 = Answer.create({text: "Building a house. Project involves making an investment of $500,000. After one year, there will be monthly rental returns of $10,000.", question_id: 3})
a10 = Answer.create({text: "Building a bridge. Project involves making an investment of $1,000,000. After two years, there will be monthly returns via toll for the bridge of $50,000.", question_id: 3})
a11 = Answer.create({text: "Building a school. Project involves making an investment of $500,000. After one year, there will be monthly returns via school fees of $50,000.", question_id: 3})
a12 = Answer.create({text: "Building an apartment. Project involves making an investment of $200,000. After six months, there will be monthly rental returns of $5000.", question_id: 3})
a13 = Answer.create({text: "Product Requirements", question_id: 4})
a14 = Answer.create({text: "Project Management Plan", question_id: 4})
a15 = Answer.create({text: "Product Management Plan", question_id: 4})
a16 = Answer.create({text: "WBS & WBS Dictionary", question_id: 4})
a17 = Answer.create({text: "Project Management Plan", question_id: 5})
a18 = Answer.create({text: "Requirements Document", question_id: 5})
a19 = Answer.create({text: "Project Charter", question_id: 5})
a20 = Answer.create({text: "Organizational process assets", question_id: 5})

p1 = Play.create({user_id: 1, num_questions: 5, correct:5, date:"18/09/2015"})