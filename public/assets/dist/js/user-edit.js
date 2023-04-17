const getUserInfo = (() => {
  const queryParams = new URLSearchParams(window.location.search);
  const email = encodeURIComponent(queryParams.get('email'));
  const xhr = new XMLHttpRequest();
  xhr.open('GET', `/edit-user?id=${email}`);
  xhr.send();
  xhr.onload = () => {
    if (xhr.status === 200) {
      window.location.reload();
    } else {
      console.error(`Request failed. Returned status of ${xhr.status}`);
    }
  };
})();

// Kiểm tra xem giá trị của trường confirm-password có trùng với giá trị password không
function validatePassword(confirmPassword, email) {
  $.ajax({
    url: '/checkPassword',
    method: 'POST',
    contentType: 'application/json',
    data: JSON.stringify({
      'pwd': confirmPassword,
      'email': email
    }),
    success: function (response) {
      response = JSON.parse(response)
      if (!response.success) {
        alert(response.message);
        return;
      }
    },
    error: function (xhr, status, error) {
      console.error(`Request failed. Returned status of ${xhr.status}`);
    }
  });
}


const btnSave = document.querySelector('#btnSave');
btnSave.addEventListener('click', function (event) {
  event.preventDefault();
  // Lấy giá trị các trường dữ liệu từ form
  let user = new User();
  user.name = document.getElementById('name').value;
  user.email = document.getElementById('email').value;
  user.password = document.getElementById('confirm-password').value;
  user.role = document.getElementById('role').value;

  if (!validation.checkEmpty(user.name)) {
    alert('Please enter your full name');
    return;
  }

  if (!validation.checkEmpty(user.password)) {
    alert('Please enter a password');
    return;
  }

  validatePassword(user.password, user.email)

  // Thực hiện lưu dữ liệu xuống database tại đây
  $.ajax({
    url: '/updateUser',
    method: 'POST',
    contentType: 'application/json',
    data: JSON.stringify({
      'userUpdate': user
    }),
    success: function (response) {
      console.log(JSON.parse(response))
      alert("Update successfully")
      window.location.reload()
    },
    error: function (xhr, status, error) {
      console.error(`Request failed. Returned status of ${xhr.status}`);
    }
  });

});


