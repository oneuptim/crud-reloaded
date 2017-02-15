1. Blog.create(name:"Namba 3", description: "This is the third blog's desc")

************************************************************************************************
2. First 3 blogs be owned by the first user
=> Owner.create(user: User.first, blog: Blog.find(3))

************************************************************************************************
3. Fourth blog be owned by the second user
=> Owner.create(user: User.find(2), blog: Blog.find(4))

************************************************************************************************

4. Have the 5th blog you create be owned by the last user
=> Owner.create(user: User.last, blog: Blog.last)

************************************************************************************************

5. Have the third user own all of the blogs that were created.
=> Owner.where(blog: Blog.where(id: 1..5)).update(user: User.find(3))

************************************************************************************************

6. Find the owners of all the blogs from 1 to 3
=> Owner.where(blog: Blog.where(id: 1..3))

************************************************************************************************

7. Have the first user create 3 posts for the blog with an id of 2.
Remember that you shouldn't do Post.create(user: User.first, blog_id: 2) but more like Post.create(user: User.first, blog: Blog.find(2)). Again, you should never reference the foreign key in Rails.

=> Post.create(user: User.first, blog: Blog.find(2), title: "This the title for post", content: "The quick brown fox jumped over the lazy sleeping dog!")

=> Post.create(user: User.first, blog: Blog.find(2), title: "Second title for post", content: "How do you do quick brown fox jumped over the lazy sleeping dog!")

=> Post.create(user: User.first, blog: Blog.find(2), title: "Third title for post", content: "Third do you do quick brown fox jumped over the lazy sleeping dog!")

************************************************************************************************

8. Have the second user create 5 posts for the last Blog.

=> Post.create(user: User.find(2), blog: Blog.last, title: "Title and stuff!", content: "Content is the new king and you shold know this by now!")

=> Post.create(user: User.find(2), blog: Blog.last, title: "How and stuff!", content: "How is the new king and you shold know this by now!")

************************************************************************************************

9. Have the 3rd user create several posts for different blogs.

=> Post.create(user: User.find(3), blog: Blog.last, title: "Still and stuff!", content: "Come back't is the new king and you should know this by now!")

************************************************************************************************

10. Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
=> Message.create(user: User.find(3), post: Post.first, author: "Kendo", message: "Lotres this is fun!")
=> Message.create(user: User.find(3), post: Post.find(2), author: "Lincoln", message: "Strong this is fun!")

************************************************************************************************

11. Have the 4th user create 3 messages for the last post you created.
=> Message.create(user: User.find(4), post: Post.last, author: "Tunner", message: "Hola this is fun!")

************************************************************************************************

12. Change the owner of the 2nd post to the last user.
=> Post.find(2).update(user: User.last)

************************************************************************************************

13. Change the 2nd post's content to be something else.
=> Post.find(2).update(content: "This is the updated content of the second post done by Timbo!")

************************************************************************************************

14. Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs)
=> User.find(3).blogs

************************************************************************************************

15. Retrieve all posts that were created by the 3rd user
=> User.find(3).posts

************************************************************************************************

16. Retrieve all messages left by the 3rd user
=> User.find(3).messages

************************************************************************************************

17. Retrieve all posts associated with the first blog as well as who left these posts.  
=> Post.where(blog: Blog.find(5))

************************************************************************************************

18. Retrieve all messages associated with the first blog along with all the user information of those who left the messages.
=> %%%%%%%%%%%%%

************************************************************************************************

19. Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
=> %%%%%%%%%%%%%

************************************************************************************************

20. Change it so that the first blog is no longer owned by the first user.
=> %%%%%%%%%%%%%

************************************************************************************************
