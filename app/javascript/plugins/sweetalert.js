import swal from "sweetalert";

function bindSweetAlertButtonDemo(title, user_id) {
  swal({
    title: title,
    text: "Your trainer must accept your request now",
    button: "Sounds good!",
    timer: 30000,
  }).then(function() {
    window.location.href = `/users/${user_id}/bookings`;
  });
}

export { bindSweetAlertButtonDemo };


