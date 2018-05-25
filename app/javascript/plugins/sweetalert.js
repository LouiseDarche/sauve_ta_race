import swal from "sweetalert";

function bindSweetAlertButtonDemo(title) {
  swal({
    title: title,
    text: "Your trainer must accept your request now",
    icon: "success",
    button: false,
    timer: 30000,
  })
}

export { bindSweetAlertButtonDemo };


