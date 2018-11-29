function EditUserManager(i) {
    if ($($('.UserType').get(i)).val() === "" || $($('.UserPassword').get(i)).val() === ""
        || $($('.FullName').get(i)).val() === "" || $($('.UserPhoneNumber').get(i)).val() === "") {
        alert("Bạn phải chọn/điền thông tin trước khi sửa");
    }
    else if ($($('.UserPhoneNumber').get(i)).val().length > 16) {
        alert("Số điện thoại từ 16 ký tự trờ xuống");
    }
    else {
        var User = {
            FullName: $($('.FullName').get(i)).val(),
            UserId: $($('.UserId').get(i)).val(),
            UserType: $($('.UserType').get(i)).val(),
            UserPhoneNumber: $($('.UserPhoneNumber').get(i)).val(),
            UserPassword: $($('.UserPassword').get(i)).val()
        };
        $.ajax({
            type: "POST",
            url: "/Admin/Employee/UpdateUser",
            data: { userManager: User },
            success: function (resultCode) {
                if (resultCode) {
                    alert("Sửa Thành Công!");
                    window.location.reload();
                    return true;
                }
                else {
                    alert("Sửa Thất Bại");
                    return false;
                }
            }
        });
    }
}
$('.InsertEmployee').on('click',function() {
    if ($('.UserType').val() === "" || $('.UserPassword').val() === ""
        || $('.UserName').val() === "" || $('.FullName').val() === ""
        || $('.UserPhoneNumber').val() === "") {
        alert("Bạn phải chọn/điền thông tin trước khi sửa");
    }
    else if ($('.UserPassword').val() !== $('.RePassword').val())
        alert("Mật khẩu nhập lại phải giống mật khẩu");
    else if ($('.UserPhoneNumber').val().length > 16) {
        alert("Số điện thoại từ 16 ký tự trờ xuống");
    }
    else {
        var User = {
            UserType: $('.UserType').val(),
            FullName: $('.FullName').val(),
            UserName: $('.UserName').val(),
            UserPhoneNumber: $('.UserPhoneNumber').val(),
            UserPassword: $('.UserPassword').val()
        };
        $.ajax({
            type: "POST",
            url: "/Admin/Employee/AddUser",
            data: { userManager: User },
            success: function (resultCode) {
                if (resultCode) {
                    alert("Thêm Thành Công!");
                    window.location.href = "/Admin/Employee";
                    return true;
                }
                else {
                    alert("Thêm Thất Bại");
                    return false;
                }
            }
        });
    }
});
for (let i = 0; i < $('.UserPhoneNumber').length; i++) {
    $($('.UserPhoneNumber').get(i)).keypress(function (evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode;
        if ($($('.UserPhoneNumber').get(i)).val().length === 0) {
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                if (charCode === 43)
                    return true;
                else
                    return false;
            }
        } else {
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            else
                return true;
        }
    });
}
for (let i = 0; i < $('.cancelEditUser').length; i++) {
    $($('.cancelEditUser').get(i)).on('click', function () {
        $($('.editUserPanel').get(i)).removeClass('active');
    });
    $($('.deleteUser').get(i)).on('click', function () {
        var User = {
            UserId: $($('.UserId').get(i)).val()
        };
        $.ajax({
            type: "POST",
            url: "/Admin/Employee/DeleteUser",
            data: { userManager: User },
            success: function (resultCode) {
                if (resultCode) {
                    alert("Xóa Thành Công!");
                    window.location.reload();
                    return true;
                }
                else {
                    alert("Xóa Thất Bại");
                    return false;
                }
            }
        });
    });
}