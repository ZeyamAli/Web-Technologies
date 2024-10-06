var level = 0;
var isStart = false;
var gamePattern = [];
var userClickedPattern = [];
var userChosenColour = '';
var buttonColours = ['red', 'green', 'blue', 'yellow'];

$(document).keypress(function (e) {
  if (!isStart) {
    // if (e.key === ' ') {
    // $("#level-title").text("Level " + level);
    nextSequence();
    isStart = true;
    // }
  }
});

$('.btn').click(function () {
  userChosenColour = $(this).attr('id');
  userClickedPattern.push(userChosenColour);

  playAudio(userChosenColour);
  animatePress(userChosenColour);

  checkPress(userClickedPattern.length - 1);

  console.log(`User Chosen Colour: ${userChosenColour}`);
  console.log(`User Clicked Pattern: ${userClickedPattern}`);

  $('#level-title')
    .text(`User Choosen Color: ${userChosenColour}`)
    .css({
      color: `${userChosenColour}`,
    });
});

function nextSequence() {
  var randNum = randNumber();
  var randomChosenColour = buttonColours[randNum];

  gamePattern.push(randomChosenColour);
  level++;

  $('#level-title').text('Level ' + level);

  $('#' + randomChosenColour)
    .fadeIn(100)
    .fadeOut(100)
    .fadeIn(100);

  playAudio(randomChosenColour);
  animatePress(randomChosenColour);

  // console.log(`Random Chosen Colour: ${randomChosenColour}`);
  // console.log(`Random Number: ${randNum}`);
  // console.log(`Game Pattern: ${gamePattern}`);
}

function checkPress(currentLevel) {
  if (gamePattern[currentLevel] === userClickedPattern[currentLevel]) {
    if (userClickedPattern.length === gamePattern.length) {
      setTimeout(function () {
        nextSequence();
      }, 1000);
    }
  } else {
    playAudio('wrong');

    $('body').addClass('game-over');

    setTimeout(function () {
      $('body').removeClass('game-over');
    }, 200);

    $('#level-title').text('Game Over, Press Any Key to Restart');

    startOver();
  }
}

function randNumber() {
  return Math.floor(Math.random() * 4);
}

function playAudio(colour) {
  var audio = new Audio(`sounds/${colour}.mp3`);
  audio.play();
}

function animatePress(currentColour) {
  $(`#${currentColour}`).addClass('pressed');

  setTimeout(function () {
    $(`#${currentColour}`).removeClass('pressed');
  }, 100);
}

function startOver() {
  level = 0;
  gamePattern = [];
  isStart = false;
}
