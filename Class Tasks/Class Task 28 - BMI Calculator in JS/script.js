function calculateBMI() {
  var height = document.getElementById('height').value;
  var weight = document.getElementById('weight').value;
  var bmi = weight / (height / 100) ** 2;
  var result = document.getElementById('result');
  var message = document.getElementById('message');
  var modal = document.getElementById('bmiModal');

  result.innerHTML = 'Your BMI is: ' + bmi.toFixed(2);

  if (bmi < 18.5) {
    message.innerHTML =
      'You are Underweight. Consider gaining weight by improving your diet and increasing calorie intake.';
    result.className = 'result-message underweight';
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    message.innerHTML =
      'You have a Normal BMI. Keep maintaining a balanced diet and stay active!';
    result.className = 'result-message normal';
  } else {
    message.innerHTML =
      'You are Overweight. Consider adopting a healthier lifestyle through exercise and a balanced diet.';
    result.className = 'result-message overweight';
  }

  modal.style.display = 'flex';
}

function closeModal() {
  var modal = document.getElementById('bmiModal');
  modal.style.display = 'none';
}

window.onclick = function (event) {
  var modal = document.getElementById('bmiModal');
  if (event.target == modal) {
    modal.style.display = 'none';
  }
};
