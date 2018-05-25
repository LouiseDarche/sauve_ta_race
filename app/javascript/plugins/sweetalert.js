import swal from "sweetalert";

function bindSweetAlertButtonDemo() {
  document.getElementById("sweet-alert-trainee").addEventListener('click', () => {
    swal({
      title: "Good choice !",
      text: "Your trainer must accept your request now",
      icon: "success",
      button: false,
      timer: 30000,
    })
  });
}

export { bindSweetAlertButtonDemo };
