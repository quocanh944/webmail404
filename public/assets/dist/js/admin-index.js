// const renderUsersTable = (users) => {
//   let contentHTML = ``;

//   for (let i = 0; i < users.length; i++) {
//     contentHTML += `
//       <tr class="user-row">
//         <td>${i + 1}</td>
//         <td><a href="#"><img src="${users[i].avatar}" class="avatar" alt="Avatar"> ${users[i].name}</a></td>
//         <td>${users[i].email}</td>
//         <td>${users[i].role}</td>
//         <td>
//           <a href="#" class="settings" title="Settings" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
//           <a type="button" data-bs-toggle="modal" data-bs-target="#deleteEmployeeModal" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
//           <button class="block-user-btn btn btn-danger">Block User</button>
//         </td>
//       </tr>
//     `;
//   }
//   document.querySelector("tbody").innerHTML = contentHTML;

//   const blockUserButtons = document.querySelectorAll(".block-user-btn");
//   blockUserButtons.forEach((button) => {
//     button.addEventListener("click", () => {
//       const userRow = button.closest(".user-row");
//       userRow.classList.add("blocked");
//     });
//   });
// };

function User (){
  this.email = "";
  this.password = "";
  this.name = "";
  this.role = "";
}

document.querySelector("#btnAddUser").onclick = () => {
  let user = new User();
  user.email = document.querySelector("#email").value;
  user.password = document.querySelector("#password").value;
  user.name = document.querySelector("#name").value;
  user.role = document.querySelector("#role").value;
  const xhr = new XMLHttpRequest();
  xhr.open('POST', '/createUser');
  xhr.setRequestHeader('Content-Type', 'application/json');
  xhr.send(JSON.stringify({
    'newUser': user
  }));
  xhr.onload = () => {
    if (xhr.status === 200) {
      window.location.reload();
    } else {
      console.error(`Request failed. Returned status of ${xhr.status}`);
    }
  };
  
}


const delUser = (userid) => {
  if (confirm("Bạn có chắc chắn muốn xóa user này không?")) {
    const xhr = new XMLHttpRequest();
    xhr.open('POST', '/deleteUser');
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.send(JSON.stringify({
      'userId': userid
    }));
    xhr.onload = () => {
      if (xhr.status === 200) {
        window.location.reload();
      } else {
        console.error(`Request failed. Returned status of ${xhr.status}`);
      }
    };
  }
}


