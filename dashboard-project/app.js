// Highlight the active nav link based on current page filename
document.addEventListener('DOMContentLoaded', function () {
  const currentFile = window.location.pathname.split('/').pop() || 'dashboard.html';

  const navLinks = document.querySelectorAll('.nav-bar a');
  navLinks.forEach(link => {
    const href = link.getAttribute('href');
    if (href === currentFile) {
      link.classList.add('active');
    }
  });

  const sidebarLinks = document.querySelectorAll('.sidebar-item');
  sidebarLinks.forEach(link => {
    const href = link.getAttribute('href');
    if (href === currentFile) {
      link.classList.add('active');
    }
  });
});
