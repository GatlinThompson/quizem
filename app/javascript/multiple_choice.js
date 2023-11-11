//Looks for elements with the class "mc-option"
var checkBoxes = document.querySelectorAll(".mc-option");
var setUp = false;

//Loops through the check boxes to look for a checked checkbox
for (const checkbox of checkBoxes) {
  if (checkbox.checked == true) {
    setUp = false;
    break;
  } else {
    setUp = true;
  }
}

//If false checks first checkbox.
if (setUp) {
  checkBoxes[0].checked = true;
}

//Loops through each checkbox with .mc-correct class
for (const checkbox of checkBoxes) {
  //Unchecks all checkboxes when user clicks on a checkbox
  checkbox.addEventListener("change", () => {
    for (const checkbox of checkBoxes) {
      checkbox.checked = false;
    }

    //Checks this checkbox
    checkbox.checked = true;
  });
}
