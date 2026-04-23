// Highlight the active sidebar item based on current page filename
document.addEventListener('DOMContentLoaded', function () {
  const page = window.location.pathname.split('/').pop(); // e.g. "dashboard.html"

  document.querySelectorAll('.sidebar-item[data-page]').forEach(function (item) {
    if (item.getAttribute('data-page') === page) {
      item.classList.add('active');
    } else {
      item.classList.remove('active');
    }
  });
});
