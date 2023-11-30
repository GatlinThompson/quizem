//Changes form view based on question_type value
function changeNestedForm(event) {
  //Variables
  const tfForm = document.getElementById("tf-form");
  const mcForm = document.getElementById("mc-form");
  const maForm = document.getElementById("ma-form");
  const matchForm = document.getElementById("match-form");

  //Sets all forms to display: none
  tfForm.style.display = "none";
  mcForm.style.display = "none";
  maForm.style.display = "none";
  matchForm.style.display = "none";

  //Question section switch
  switch (event.target.value) {
    case "multiple_choice":
      mcForm.style.display = "block";
      break;
    case "true_false":
      tfForm.style.display = "block";
      break;
    case "multiple_answers":
      maForm.style.display = "block";
      break;
    case "matching":
      matchForm.style.display = "block";
      break;
    default:
      tfForm.style.display = "none";
      mcForm.style.display = "none";
      matchForm.style.display = "none";
      maForm.style.display = "none";
  }
}
