# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hash_prompt = "<style></style></head><body id=\"preview\">
<h1><a id=\"Hashing_Algorithms_0\"></a>Hashing Algorithms</h1>
<h2><a id=\"Intro_1\"></a>Intro</h2>
<p>Hashing algorithms are one of the core tools in password security. They are functions that take an input (or ‘message’) and returns a fixed-size alphanumeric string. The string is called the ‘hash value’, ‘message digest’, ‘digital fingerprint’, ‘digest’ or ‘checksum’).</p>
<h2><a id=\"Qualities_4\"></a>Qualities</h2>
<p>The ideal hash function has three main properties:</p>
<ul>
<li>It is extremely easy to calculate a hash for any given data.&lt;/li&gt;\n&lt;li&gt;It is extremely computationally difficult to calculate an alphanumeric text that has a given hash.</li>
<li>It is extremely unlikely that two slightly different messages will have the same hash.</li>
</ul>
<h2><a id=\"Instructions_9\"></a>Instructions</h2>
<p>For this exercise, you are going to implement the &lt;code&gt;bcrypt&lt;/code&gt; hashing algorithm for user registration. The input is an object with the following fields:</p>
<ul>
<li><code>saltRounds</code>: The number of rounds for the <a href=\"https://en.wikipedia.org/wiki/Salt_(cryptography)\">salt</a></li>
<li><code>plaintext</code>: The plaintext password</li>
</ul>
<p>You will need to use the <code>bcrypt</code> npm package. The documentation can be found <a href=\"https://www.npmjs.com/package/bcrypt\">here</a>. The output should be the password hashed with bcrypt.</p></body>
"
search_prompt = '<style></style></head><body id="preview">
<h1><a id="Search_Algorithms_0"></a>Search Algorithms</h1>
<h2><a id="Intro_2"></a>Intro</h2>
<p>Search algorithms allow computers to find items in various data structures with relative speed. They are used in various applications such as search engines, databases and much much more.</p>
<h2><a id="Binary_Search_5"></a>Binary Search</h2>
<p>In this exercise, we will go over binary search. Binary search is a way of<br>
finding an element in an array in a worst case scenario of <code>O(log n)</code>. The algorithm only works for a sorted array, but is significantly faster than the naive linear search. The basic algorithm goes as such:</p>
<ul>
<li>Compare the target value to the middle element of the array.</li>
<li>If the target is bigger, ignore the lower half of the array, if the target is smaller, ignore the top half of the array</li>
<li>If the target value is the middle value, return</li>
<li>If the array is empty, the element is not in the array</li>
</ul>
<h2><a id="Instructions_13"></a>Instructions</h2>
<p>For this exercise, you are going to implement the binary search algorithm for finding users. The input is an object with the following fields:</p>
<ul>
<li><code>users</code>: an array of user objects, sorted by username.</li>
<li><code>username</code>: the desired user’s username</li>
</ul>
<p>Please return the complete user object</p>

</body>'

input = JSON.generate({ plaintext: "hunter2hunter2", saltRounds: 10 })
tutorial = Tutorial.create({ name: "Make your own Blog!", author: 1 })
Tutorial.create({ name: "Make a Todo List!", author: 1 })
exercise = Exercise.create(
  { prompt: hash_prompt,
    input: input,
    name: "Hash Exercise!",
    tutorial_id: tutorial.id
  }
)

Exercise.create(
  { prompt: search_prompt,
    name: "Search Exercise!",
    tutorial_id: tutorial.id
  }
)

project = Project.create(
  { user_id: 1,
    tutorial_id: tutorial.id,
    current_exercise: exercise.id,
    name: "My Blog"
  }
)

Block.create(
  {
    code: "var a = 10;",
    project_id: project.id,
    exercise_id: exercise.id
  }
)
