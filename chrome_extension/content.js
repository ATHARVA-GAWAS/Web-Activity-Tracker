// Track website visits
chrome.runtime.sendMessage({ action: "trackWebsiteVisit", url: window.location.href }, function(response) {
  console.log("Website visit tracked.");
});

// Listen for messages from the background script
chrome.runtime.onMessage.addListener(function(message, sender, sendResponse) {
  if (message.action === "blockWebsite") {
    // Implement logic to block access to restricted websites
    if (window.location.href.includes(message.url)) {
      window.location.href = "blocked.html";
    }
  }
});
