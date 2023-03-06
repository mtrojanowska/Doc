# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do
  theme = Theme.find_or_create_by!(title: Faker::Lorem.word.capitalize)

  3.times do
    section = Section.create!(title: Faker::Lorem.words(number: 3).join(' '), theme_id: theme.id)

    2.times do
      task = Task.create!(title: Faker::Lorem.words(number: 4).join(' '),
                          guideline: Faker::Lorem.paragraph(sentence_count: 3))

      2.times do
        step = Step.create!(description: Faker::Lorem.paragraph(sentence_count: 6),
                            solution: Faker::Lorem.paragraph(sentence_count: 3), task_id: task.id)

        exercise = Exercise.new(exercise: Faker::Lorem.paragraph(sentence_count: 4),
                                solution: Faker::Lorem.paragraph(sentence_count: 6), status: 1, step_id: step.id)
        exercise.section_id = section.id
        exercise.save
      end
    end

    paragraph = Paragraph.create!(content: Faker::Lorem.paragraph(sentence_count: 25), section_id: section.id)
  end
end

# 10.times do
#   task = Task.create!(title: Faker::Lorem.words(number: 4).join(' '),
#                       guideline: Faker::Lorem.paragraph(sentence_count: 3))

#   2.times do
#     step = Step.create!(description: Faker::Lorem.paragraph(sentence_count: 6),
#                         solution: Faker::Lorem.paragraph(sentence_count: 3), task_id: task.id)
#     5.times do
#       exercise = Exercise.new(exercise: Faker::Lorem.paragraph(sentence_count: 4),
#                               solution: Faker::Lorem.paragraph(sentence_count: 6), step_id: step.id)
#       exercise.section_id = section.id
#       exercise.save
#     end
#   end
# end

# 3.times do
#   author = Author.create!( nickname: Faker::Name.first_name, email: Faker::Internet.email,
#            password: Faker::Internet.password(min_length: 26, max_length: 26, mix_case: true),
#            encrypted_password: Faker::Internet.password(min_length: 26, max_length: 26, mix_case: true) )

#   category = []
#     3.times do
#        category << Category. find_or_create_by!( title: Faker::Lorem.word.capitalize )
#       end

#   post = Post.new( title: Faker::Lorem.sentence(word_count: 3), description: Faker::Lorem.paragraph(sentence_count: 5),
#          published_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), author_id: author.id  )
#          post.categories << category
#          post.save

#   end
