$(document).ready(function () {

    $('.updateuser').click(function () {
        var getidhs = this.id;
        var idhs = getidhs.substring(11, this.id.length);
        var stdto = {
            StudentId: idhs,
            StudentPhone: $('#stphone-' + idhs).val(),
            StudentName: $('#stname-' + idhs).val(),
            StudentAdress: $('#staddress-' + idhs).val(),
            StudentEmail: $('#stmail-' + idhs).val(),
            StudentMark: $('#stmark-' + idhs).val(),
            StudentSchoolFee: $('#stschoolfee-' + idhs).val(),
        };
        console.log(stdto);
        $.ajax({
            url: "/StudentManagerment/UpdateStudent",
            type: "POST",
            data: { stdto: stdto },
            success: function (resultCode) {
                if (resultCode === 1) {
                    alert("Sửa học viên thành công!");
                    window.location.reload();
                } else {
                    alert("Đã sảy ra lỗi khi sửa!");
                    return false;
                }
            }
        });
    });

    $('.deleteuser').click(function () {
        var getidhs = this.id;
        var idhs = getidhs.substring(11, this.id.length);

        $.ajax({
            url: "/StudentManagerment/DeleteStudent",
            type: "POST",
            data: { idStudent: idhs },
            success: function (resultCode) {
                if (resultCode === 1) {
                    alert("Xóa học viên thành công!");
                    window.location.reload();
                } else {
                    alert("Đã sảy ra lỗi khi xóa!");
                    return false;
                }
            }
        });
    });

    $('#addst').click(function () {
        var stdto = {
            StudentPhone: $('#stphone').val(),
            StudentName: $('#stname').val(),
            StudentAdress: $('#staddress').val(),
            StudentEmail: $('#stmail').val(),
            StudentMark: $('#stmark').val(),
            StudentSchoolFee: $('#stschoolfee').val(),
        };
        $.ajax({
            url: "/StudentManagerment/AddNewStudent",
            type: "POST",
            data: { stdto: stdto },
            success: function (resultCode) {
                if (resultCode === 1) {
                    alert("Thêm học viên thành công!");
                    window.location.reload();
                } else {
                    alert("Đã sảy ra lỗi khi thêm!");
                    return false;
                }
            }
        });
    });

    //$('#addst').click(function () {
    //    var stdto = {
    //        StudentPhone: $('#stphone').val(),
    //        StudentName: $('#stname').val(),
    //        StudentAdress: $('#staddress').val(),
    //        StudentEmail: $('#stmail').val(),
    //        StudentMark: $('#stmark').val(),
    //        StudentSchoolFee: $('#stschoolfee').val(),
    //    };
    //    $.ajax({
    //        url: "/StudentManagerment/AddNewStudent",
    //        type: "POST",
    //        data: { stdto: stdto },
    //        success: function (resultCode) {
    //            if (resultCode === 1) {
    //                alert("Thêm học viên thành công!");
    //                window.location.reload();
    //            } else {
    //                alert("Đã sảy ra lỗi khi thêm!");
    //                return false;
    //            }
    //        }
    //    });
    //});
});

$("#nv-add").validate({
    rules: {
        username: {
            required: !0,
            maxlength: 64
        },
        name: {
            required: !0,
            maxlength: 64
        },
        email: {
            required: !0,
            maxlength: 105
        },
        tel: {
            required: !0,
            maxlength: 11,
            minlength: 9,
            number: !0
        },
        number: {
            required: 1,
            number: !0
        },
        pass: {
            required: !0,
            minlength: 6,
            maxlength: 64
        },
        pass2: {
            required: !0,
            minlength: 6,
            maxlength: 64
        },
        describe: {
            maxlength: 250
        }
    },
    messages: {
        username: {
            required: "Bạn phải nhập đầy đủ thông tin",
            maxlength: jQuery.validator.format("Tên tài khoản không vượt quá 64 ký tự")
        },
        name: {
            required: "Họ tên không được để trống!",
            maxlength: jQuery.validator.format("Họ tên không vượt quá 64 ký tự")
        },
        email: {
            required: "Email không được để trống!",
            maxlength: jQuery.validator.format("Email không vượt quá 105 ký tự")
        },
        tel: {
            required: "Bạn phải nhập đầy đủ thông tin",
            minlength: jQuery.validator.format("Số điện thoại không ngắn hơn 9 ký tự"),
            maxlength: jQuery.validator.format("Số điện thoại không vượt quá 11 ký tự"),
            number: "Bạn chỉ được nhập số"
        },
        tel: {
            number: "Bạn chỉ được nhập số"
        },
        pass: {
            required: "Bạn phải nhập đầy đủ thông tin",
            minlength: jQuery.validator.format("Mật khẩu không được ngắn quá 6 ký tự"),
            maxlength: jQuery.validator.format("Mật khẩu không được vượt quá 64 ký tự")
        },
        pass2: {
            required: "Bạn phải nhập đầy đủ thông tin",
            minlength: jQuery.validator.format("Mật khẩu không được ngắn quá 6 ký tự"),
            maxlength: jQuery.validator.format("Mật khẩu không được vượt quá 64 ký tự")
        },
        discribe: {
            maxlength: jQuery.validator.format("Mô tả không được vượt quá 250 ký tự")
        }
    },
    submitHandler: function (form) {
        alert("hi");
        var stdto = {
            StudentPhone: $('#stphone').val(),
            StudentName: $('#stname').val(),
            StudentAdress: $('#staddress').val(),
            StudentEmail: $('#stmail').val(),
            StudentMark: $('#stmark').val(),
            StudentSchoolFee: $('#stschoolfee').val(),
        };
        $.ajax({
            url: "/StudentManagerment/AddNewStudent",
            type: "POST",
            data: { stdto: stdto },
            success: function (resultCode) {
                if (resultCode === 1) {
                    alert("Thêm học viên thành công!");
                    window.location.reload();
                } else {
                    alert("Đã sảy ra lỗi khi thêm!");
                    return false;
                }
            }
        });
    }
})