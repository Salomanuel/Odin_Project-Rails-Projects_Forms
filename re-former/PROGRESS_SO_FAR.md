stuck at 
2. Create the Edit view at 
app/views/users/edit.html.erb 
and copy/paste your form from the New view. 
Your HTML and `#form_tag` forms 
(which should still be commented out) 
will not work -- they will submit the form 
as a POST request when you need it to be a PATCH 
(PUT) request (remember your $ rake routes?). 
It's an easy fix, which you should be able to see 
if you attempt to edit a user with the #form_for 
form (which is smart enough to know if you're 
trying to edit a user or creating a new one).