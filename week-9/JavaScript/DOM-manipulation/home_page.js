// DOM Manipulation Challenge


// I worked on this challenge with Sabrina Unrein.


// Add your JavaScript calls to this page:

// Release 0:


var done = document.getElementById("release-0");

done.className = "done";

document.getElementsByClassName("done");


// Release 1:


document.getElementById("release-1").style.display = "none";


// Release 2:

textChange = document.getElementsByTagName("h1");

textChange[0].innerHTML = "I finished Release 2";

// Release 3:


document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:

var elements = document.getElementsByClassName('release-4');

for (var i = 0; i < elements.length; i++) {
  var element = elements[i];
  element.style.fontSize = "2em";
}


// Release 5:

var tmpl = document.getElementById("hidden");

document.body.appendChild(tmpl.content.cloneNode(true));


/* Reflections

What did you learn about the DOM?

DOM manipulation via JS seems like a cool resource. We had a tough 
time getting the hang of manipulating HTML elements via the DOM and 
Chrome DevTools console, but we persevered, and with enough flailing, 
we got through all the releases. 

We had to reach out to Emmanuel to get through the first release,
however, and we felt like DBC's setup instructions could have been
more helpful and clear in terms of understanding how to complete the
releases, and what to expect upon completion.



What are some useful methods to use to manipulate the DOM?

We mostly used document.getElementsByClassName and .getElementsById.
And we realized that for class manipulation, we needed to use a for
loop to modify multiple elements.

I get the feeling there is a lot more we can learn about manipulating
the DOM with JS. I'm betting we'll get lots of practice with this in
the coming weeks and months :)





*/