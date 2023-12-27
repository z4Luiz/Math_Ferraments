document.addEventListener('DOMContentLoaded', function () {
  // Toggle the menu on click
  document.querySelector('.navPanelToggle').addEventListener('click', function () {
    document.querySelector('#menu').style.display = 'block';
  });

  // Close the menu on click outside
  document.querySelector('#menu').addEventListener('click', function (e) {
    if (e.target.tagName === 'A') {
      document.querySelector('#menu').style.display = 'none';
    }
  });
});