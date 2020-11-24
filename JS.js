/*
    LOGIN SECTION
*/

function validateForm(f) {
    var RE_Name = /^[a-zA-Z]$/;
    var i;
    for (i = 0; i < f.elements.length; i++) {
        if (f.elements[i].value == "") {
            alert("Field should not be empty!");
            break;
        }
    }
    if (i != f.elements.length) {
        f.elements[i].focus();
        return;
    }
    /*
    for (i = 0; i < f.elements.length; i++) {
        if (!RE[i].test(f.elements[i])) {
            document.getElementById("")
        }
    }*/
    if (!RE_Name.test(f.elements[0].value) && !RE_Name.test(f.elements[0].value)) {
        document.getElementById("error_name").innerHTML = 'Name should contain only alphabets!';
        f.elements[0].focus();
    }
}