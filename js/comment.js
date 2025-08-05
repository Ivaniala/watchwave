var filmId = document.body.getAttribute('data-film-id'); 
function loadComments() {
   var xhr = new XMLHttpRequest();
   xhr.open('GET', 'get_comments.php?film_id=' + filmId, true);
   xhr.onload = function() {
       if (xhr.status === 200) {
           try {
               var comments = JSON.parse(xhr.responseText);
               var commentsSection = document.getElementById('commentsSection');
               commentsSection.innerHTML = ''; 
               comments.forEach(function(comment) {
                   var newCommentDiv = document.createElement('div');
                   newCommentDiv.className = 'comment';
                   newCommentDiv.innerHTML = '<strong>' + comment.username + ':</strong> ' + comment.comment_text;
                   commentsSection.appendChild(newCommentDiv);
               });
           } catch (e) {
               console.error('Failed to parse JSON: ' + xhr.responseText);
           }
       } else {
           console.error('Request error: ' + xhr.status);
       }
   };
   xhr.onerror = function() {
       console.error('Network error');
   };
   xhr.send();
}


function addComment() {
   var commentText = document.getElementById('commentInput').value;
   var xhr = new XMLHttpRequest();
   var url = 'add_comment.php';
   var params = 'comment_text=' + encodeURIComponent(commentText) + '&film_id=' + filmId;

   xhr.open('POST', url, true);
   xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

   xhr.onload = function() {
       if (xhr.status === 200) {
           try {
               var response = JSON.parse(xhr.responseText);
               if (response.error) {
                   console.error('Error: ' + response.error);
                   alert('Error: ' + response.error);
               } else if (response.username && response.comment_text) {
                   var commentsSection = document.getElementById('commentsSection');
                   var newCommentDiv = document.createElement('div');
                   newCommentDiv.className = 'comment';
                   newCommentDiv.innerHTML = '<strong>' + response.username + ':</strong> ' + response.comment_text;
                   commentsSection.insertBefore(newCommentDiv, commentsSection.firstChild);

                   document.getElementById('commentInput').value = '';
               } else {
                   console.error('Invalid response: ' + xhr.responseText);
               }
           } catch (e) {
               console.error('Failed to parse JSON: ' + xhr.responseText);
           }
       } else {
           console.error('Request error: ' + xhr.status);
       }
   };

   xhr.onerror = function() {
       console.error('Network error');
   };

   xhr.send(params);
}

window.onload = loadComments;
