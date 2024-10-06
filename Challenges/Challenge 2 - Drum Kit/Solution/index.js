const buttons = document.querySelectorAll('.drum');

buttons.forEach((button) => {
  button.addEventListener('click', () => {
    const key = button.textContent;
    playSound(key);
    animateButton(key);
  });
});

document.addEventListener('keydown', (event) => {
  const key = event.key;
  playSound(key);
  animateButton(key);
});

function playSound(key) {
  let audio;
  if (key === 'w') {
    audio = new Audio('sounds/tom-1.mp3');
  } else if (key === 'a') {
    audio = new Audio('sounds/tom-2.mp3');
  } else if (key === 's') {
    audio = new Audio('sounds/tom-3.mp3');
  } else if (key === 'd') {
    audio = new Audio('sounds/tom-4.mp3');
  } else if (key === 'j') {
    audio = new Audio('sounds/snare.mp3');
  } else if (key === 'k') {
    audio = new Audio('sounds/crash.mp3');
  } else if (key === 'l') {
    audio = new Audio('sounds/kick-bass.mp3');
  }
  audio.play();
}

function animateButton(key) {
  const button = document.querySelector(`.${key}`);
  button.classList.add('pressed');
  setTimeout(() => {
    button.classList.remove('pressed');
  }, 100);
}
