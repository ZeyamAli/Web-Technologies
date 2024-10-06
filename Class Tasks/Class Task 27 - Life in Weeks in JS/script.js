let age = prompt('Enter your age: ');
let yearsLeft = 90 - age;
let daysLeft = yearsLeft * 365;
let weeksLeft = yearsLeft * 52;
let monthsLeft = yearsLeft * 12;

console.log(
  `You have ${daysLeft} days, ${weeksLeft} weeks, and ${monthsLeft} months left.`
);
