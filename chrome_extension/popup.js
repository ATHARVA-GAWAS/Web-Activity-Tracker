document.addEventListener('DOMContentLoaded', function() {
  // Add event listener for login button click
  document.getElementById('loginBtn').addEventListener('click', function() {
    // Redirect to the login page
    chrome.tabs.create({ url: 'login.html' });
  });
});
