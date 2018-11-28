function EditUserManager(i) {
    if ($($('.UserType').get(i)).val() == "" || $($('.UserPassword').get(i)).val() == "" || $($('.FullName').get(i)).val() == "" || $($('.UserPhoneNumber').get(i)).val() == "") {
        alert("Bạn phải chọn/điền thông tin trước khi sửa");
    }
    else if ($($('.UserPhoneNumber').get(i)).length >16) {
        alert("Số điện thoại phải dưới 16 ký tự");
    }
    else{
        var User = {
            FullName: $($('.FullName').get(i)).val(),
            UserId: $($('.UserId').get(i)).val(),
            UserType: $($('.UserType').get(i)).val(),
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
function InsertUserManager(i) {
    if ($($('.UserType').get(i)).val() == "" || $($('.UserPassword').get(i)).val() == "") {
        alert("Bạn phải chọn/điền thông tin trước khi sửa");
    }
    else {
        var User = {
            UserId: $($('.UserId').get(i)).val(),
            UserType: $($('.UserType').get(i)).val(),
            UserPassword: $($('.UserPassword').get(i)).val()
        };
        $.ajax({
            type: "POST",
            url: "/Admin/Employee/UpdateUser",
            data: { userManager: User },
            success: function (resultCode) {
                if (resultCode) {
                    alert("Sửa Thành Công!");
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
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    var check = false;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    else if (charCode[0] == 43)
        return true;
    return true;
}