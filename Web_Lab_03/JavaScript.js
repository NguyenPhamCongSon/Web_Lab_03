///vd1234
function calculate() {
    var dg = parseFloat(window.document.getElementById("dg").value);
    var sl = parseFloat(window.document.getElementById("sl").value);
    window.document.getElementById("tt").value = dg * sl;
}

function calculate2() {
    var dg = parseFloat(window.document.getElementById("dg").value);
    var sl = parseFloat(window.document.getElementById("sl").value);
    window.document.getElementById("tt").innerHTML = dg * sl;
}