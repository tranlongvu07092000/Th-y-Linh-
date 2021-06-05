function checkUsername (){   // Khai báo hàm
    var elMsg = document.getElementById('feedback'); // Nhận phần tử phản hồi
    var elUsername = document.getElementById('username'); // Nhận đầu vào tên người dùng
    if (elUsername.value.length < 5){ // Nếu tên ngừoi dùng quá ngắn
        elMsg.textContent = 'Username must be 5 character or more'; // đặt một msg
    } else {                        // Otherwise
        elMsg.textContent='';       // Clear message
    }
}