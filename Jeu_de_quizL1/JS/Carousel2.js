const slides = document.querySelectorAll('.slide');
const prev = document.querySelector('.prev');
const next = document.querySelector('.next');
let currentSlide = 0;

const slideWidth = slide[0].clientWidth;

next.addEventListener('click', () => {
    currentSlide = (currentSlide + 1) % slides.length;
    updateSlides();
});

prev.addEventListener('click', () => {
    currentSlide = (currentSlide - 1) % slides.length;
    updateSlides();
});

function updateSlides() {
    const offset = -currentSlide * slideWidth;
    document.querySelector('.carousel').computedStyleMap.transform = 'translateX(${offset}px)';
}