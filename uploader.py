import requests
hash_prompt = '''
<style></style></head><body id=\"preview\">
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
'''
API_URL = "http://microteachapi-dev.us-east-1.elasticbeanstalk.com/"
blog = requests.post(API_URL + "tutorials", {
    'name': 'Make your own blog!'
})
todoList = requests.post(API_URL + "tutorials", {
    'name': 'Make a todo list!'
})

r = requests.post(API_URL + "exercises",
{
    'prompt': hash_prompt,
    'name': 'Hashing Algorithms'
    'tutorial_id': 
})
