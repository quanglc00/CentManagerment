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



    $('#sendrequest').click(function () {
        return false;
    });

    $('.icon-menu').click(function () {
        //alert("Hi");
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
