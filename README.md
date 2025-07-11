Ruby Blog
A simple Ruby blog application that allows creating and managing posts and supports a newsletter subscription feature.

Features
Create, edit, and delete blog posts

View posts at http://localhost:3000/post

Newsletter subscription to keep readers updated

Getting Started
Prerequisites
Ruby (version 3.4.4)

Bundler (gem install bundler)

SQLite3 (your chosen database)

Installation
Clone the repository:

bash
Copy
Edit
git clone https://github.com/couchtr26/ruby_blog.git
cd ruby-blog
Install dependencies:

bash
Copy
Edit
bundle install
Set up the database:

bash
Copy
Edit
rails db:create
rails db:migrate
Start the server:

bash
Copy
Edit
rails server
Open your browser and visit:

bash
Copy
Edit
http://localhost:3000/post
Usage
Navigate to /post to view and manage blog posts.

Use the newsletter subscription form to add email subscribers.

Contributing
Feel free to fork this project and submit pull requests. Any contributions, suggestions, or bug reports are welcome!

License
This project is licensed under the MIT License.

