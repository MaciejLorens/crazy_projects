Role.create(name: "superadmin")
Role.create(name: "admin")
Role.create(name: "moderator")
Role.create(name: "user")

user1 = User.create(nick: "sanok_a", email: "mckl@poczta.fm", password: "plokijuh", password_confirmation: "plokijuh")
user2 = User.create(nick: "sanok_u", email: "mckk@poczta.fm", password: "plokijuh", password_confirmation: "plokijuh")
user1.roles << Role.find_by_name("admin")
user2.roles << Role.find_by_name("user")

project1 = Project.create(title: "project1_name", target: "project1_target", needs: "project1_needs", description: "project1_description")
project2 = Project.create(title: "project2_name", target: "project2_target", needs: "project2_needs", description: "project2_description")
project3 = Project.create(title: "project3_name", target: "project3_target", needs: "project3_needs", description: "project3_description")

participant1 = Participant.create(project_id: project1.id, user_id: user1.id, role: Participant::ROLES[:owner])
participant2 = Participant.create(project_id: project1.id, user_id: user2.id, role: Participant::ROLES[:participant])
participant3 = Participant.create(project_id: project2.id, user_id: user2.id, role: Participant::ROLES[:owner])
participant4 = Participant.create(project_id: project3.id, user_id: user1.id, role: Participant::ROLES[:sponsor])
participant5 = Participant.create(project_id: project3.id, user_id: user2.id, role: Participant::ROLES[:observer])

Sponsor.create(participant_id: participant4.id, value: 4.55, description: "sponsor_description")
Sponsor.create(participant_id: participant4.id, value: 7.21, description: "sponsor_description")

category1 = Category.create(:name => "category1")
category2 = Category.create(:name => "category2")
category3 = Category.create(:name => "category3")

project1.categories << category1 << category3
project2.categories << category2

post1 = Post.create(:project_id => project1.id, :user_id => user1.id, :content => "post1_content")
post2 = Post.create(:project_id => project1.id, :user_id => user2.id, :content => "post2_content")
post3 = Post.create(:project_id => project1.id, :user_id => user2.id, :content => "post3_content")
post4 = Post.create(:project_id => project2.id, :user_id => user1.id, :content => "post4_content")
post5 = Post.create(:project_id => project3.id, :user_id => user1.id, :content => "post5_content")

#image1 = Image.create()

comment1 = Comment.create(:parent_id => nil, :external_id => post1.id, :user_id => user1.id, :type => "PostComment", :content => "comment1")
comment2 = Comment.create(:parent_id => comment1.id, :external_id => post1.id, :user_id => user2.id, :type => "PostComment", :content => "comment2")
comment3 = Comment.create(:parent_id => nil, :external_id => post1.id, :user_id => user1.id, :type => "PostComment", :content => "comment3")
comment4 = Comment.create(:parent_id => nil, :external_id => post2.id, :user_id => user2.id, :type => "PostComment", :content => "comment4")
#comment5 = Comment.create(:parent_id => nil, :external_id => post2.id, :user_id => user2.id, :type => "ImageComment", :content => "comment4")
#comment6 = Comment.create(:parent_id => comment5.id, :external_id => post2.id, :user_id => user1.id, :type => "ImageComment", :content => "comment4")

gallery1 = Gallery.create(:project_id => project1.id, :name => "gallery1")
gallery2 = Gallery.create(:project_id => project1.id, :name => "gallery2")
gallery3 = Gallery.create(:project_id => project2.id, :name => "gallery3")
gallery4 = Gallery.create(:project_id => project3.id, :name => "gallery4")