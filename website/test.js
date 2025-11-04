document.addEventListener('DOMContentLoaded', () => {
  const navLinks = document.querySelectorAll('nav a');
  const sections = document.querySelectorAll('.section');
  const scrollIndicator = document.createElement('div');

  scrollIndicator.style.position = 'fixed';
  scrollIndicator.style.top = 0;
  scrollIndicator.style.left = 0;
  scrollIndicator.style.height = '4px';
  scrollIndicator.style.background = 'linear-gradient(90deg, #5e2129, #a13545)';
  scrollIndicator.style.width = '0%';
  scrollIndicator.style.zIndex = '9999';
  scrollIndicator.style.borderRadius = '4px';
  scrollIndicator.style.transition = 'width 0.25s ease';
  document.body.appendChild(scrollIndicator);

  navLinks.forEach(link => {
    link.addEventListener('click', e => {
      e.preventDefault();
      const targetId = link.getAttribute('href');

      navLinks.forEach(l => l.classList.remove('active'));
      link.classList.add('active');

      if (targetId === '#home') {
        window.scrollTo({ top: 0, behavior: 'smooth' });
      } else {
        const targetSection = document.querySelector(targetId);
        if (targetSection) targetSection.scrollIntoView({ behavior: 'smooth' });
      }
    });
  });

  const setActiveLink = () => {
    const scrollPos = window.scrollY + 150;
    let found = false;
    const scrollHeight = document.documentElement.scrollHeight - window.innerHeight;
    const scrollPercent = (window.scrollY / scrollHeight) * 100;
    scrollIndicator.style.width = `${scrollPercent}%`;

    sections.forEach(section => {
      const top = section.offsetTop;
      const height = section.offsetHeight;
      const id = section.getAttribute('id');

      if (scrollPos >= top && scrollPos < top + height) {
        navLinks.forEach(link => {
          link.classList.toggle('active', link.getAttribute('href') === `#${id}`);
        });
        found = true;
      }
    });

    if (!found && window.scrollY < 100) {
      navLinks.forEach(link => {
        link.classList.toggle('active', link.getAttribute('href') === '#home');
      });
    }
  };

  const revealElements = () => {
    const elements = document.querySelectorAll('.section, .doc-card');
    elements.forEach(el => {
      const windowHeight = window.innerHeight;
      const elementTop = el.getBoundingClientRect().top;
      if (elementTop < windowHeight - 100) {
        el.classList.add('visible');
      }
    });
  };

  const style = document.createElement('style');
  style.innerHTML = `
    .section, .doc-card {
      opacity: 0;
      transform: translateY(30px);
      transition: opacity 0.6s ease-out, transform 0.6s ease-out;
      border-radius: 20px;
    }
    .visible {
      opacity: 1;
      transform: translateY(0);
    }
  `;
  document.head.appendChild(style);

  window.addEventListener('scroll', () => {
    setActiveLink();
    revealElements();
  });

  setActiveLink();
  revealElements();
});