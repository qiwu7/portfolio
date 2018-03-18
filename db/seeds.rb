3.times do |i|
  Topic.create!( title: "Topic #{i}" )
end

puts "3 topics created"

10.times do |i|
  Blog.create!(
    title: "My Blog Post #{i}",
    body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    topic: Topic.last,
  )
end
puts "10 blog posts created"

5.times do |i|
  Skill.create!(
    title: "Rails #{i}",
    percent_utilized: 20,
  )
end
puts "5 skills created"

8.times do |i|
  Project.create!(
    title: "project title #{i}",
    subtitle: "Ruby On Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "https://placehold.it/600x400",
    thumb_image: "https://placehold.it/350x250",
  )
end

2.times do |i|
  Project.create!(
    title: "project title #{i}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "https://placehold.it/600x400",
    thumb_image: "https://placehold.it/350x250",
  )
end
puts "9 projects created"

3.times do |i|
  Project.last.technologies.create!(
    name: "Technology #{i}"
  )
end

puts "3 technologies created"

User.create!(
  email: "wqi@umich.edu",
  name: "Qi Wu",
  password: "password123!!",
  password_confirmation: "password123!!",
)

puts "default user created"
