let countdownInterval;

function rollDice() {
  document.getElementById('timer').style.display = 'flex'; // Show the timer

  clearInterval(countdownInterval); // Clear any existing countdown

  let timeLeft = 3;
  document.getElementById('timer').textContent = timeLeft;

  countdownInterval = setInterval(() => {
    timeLeft--;
    document.getElementById('timer').textContent = timeLeft;

    if (timeLeft <= 0) {
      clearInterval(countdownInterval);
      document.getElementById('timer').style.display = 'none'; // Hide the timer
      performRollDice();
    }
  }, 1000);
}

function performRollDice() {
  var randomNumber1 = Math.floor(Math.random() * 6) + 1;
  var randomNumber2 = Math.floor(Math.random() * 6) + 1;

  var randomImageSource1 = 'images/dice' + randomNumber1 + '.png';
  var randomImageSource2 = 'images/dice' + randomNumber2 + '.png';

  var image1 = document.querySelector('.img1');
  var image2 = document.querySelector('.img2');

  image1.setAttribute('src', randomImageSource1);
  image2.setAttribute('src', randomImageSource2);

  if (randomNumber1 > randomNumber2) {
    document.querySelector('h1').innerHTML = '🚩 Player 1 Wins!';
  } else if (randomNumber2 > randomNumber1) {
    document.querySelector('h1').innerHTML = 'Player 2 Wins! 🚩';
  } else {
    document.querySelector('h1').innerHTML = 'Draw!';
  }
}
