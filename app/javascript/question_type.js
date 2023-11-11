//Gets ID from question_type dropdown
var optionSelect = document.getElementById("question-type-selection");

//Changes form view based on question_type value
function changNestedForm(section) {
  //Variables
  const tfForm = document.getElementById("tf-form");
  const mcForm = document.getElementById("mc-form");
  const maForm = document.getElementById("ma-form");

  //Sets all forms to display: none
  tfForm.style.display = "none";
  mcForm.style.display = "none";
  maForm.style.display = "none";

  //Question section switch
  switch (section) {
    case "multiple_choice":
      mcForm.style.display = "block";
      break;
    case "true_false":
      tfForm.style.display = "block";
      break;
    case "multiple_answers":
      maForm.style.display = "block";
      break;
    default:
      tfForm.style.display = "none";
      mcForm.style.display = "none";
  }
}

//Event Listener for questio_type dropdown change
optionSelect.addEventListener("change", () => {
  changNestedForm(optionSelect.value);
});
