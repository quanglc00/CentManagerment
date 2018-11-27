﻿function _defineProperty(n, e, t) {
    return e in n ? Object.defineProperty(n, e, {
        value: t,
        enumerable: !0,
        configurable: !0,
        writable: !0
    }) : n[e] = t, n
}
$(document).ready(function () {
    $.validator.addMethod("regex", function (n, e, t) {
        return this.optional(e) || t.test(n)
    }, "Please check your input."), $("#frm-ttthembaiviet").validate({
        rules: {
            edit_title: {
                required: !0,
                minlength: 6,
                maxlength: 100
            },
            edit_link: {
                required: !0,
                minlength: 6,
                maxlength: 100,
                regex: ""
            },
            edit_desc: {
                required: !0,
                minlength: 6,
                maxlength: 3e3
            }
        },
        messages: {
            edit_title: {
                required: "*Bạn chưa nhập thông tin",
                minlength: jQuery.validator.format("*Tiêu đề có chiều dài từ 6-100 kí tự"),
                maxlength: jQuery.validator.format("*Tiêu đề có chiều dài từ 6-100 kí tự")
            },
            edit_link: {
                required: "*Bạn chưa nhập thông tin",
                minlength: jQuery.validator.format("*Đường dẫn tĩnh có chiều dài từ 6 - 100 kí tự"),
                maxlength: jQuery.validator.format("*Đường dẫn tĩnh có chiều dài từ 6 - 100 kí tự")
            },
            edit_desc: {
                required: "*Bạn chưa nhập thông tin",
                minlength: jQuery.validator.format("*Mô tả ngắn có chiều dài từ 6 - 150 kí tự"),
                maxlength: jQuery.validator.format("*Mô tả ngắn có chiều dài từ 6 - 150 kí tự")
            }
        }
    }), $("#form-infor--banner").validate({
        rules: {
            name_img: {
                required: !0
            },
            file_img: {
                required: !0
            },
            link_img: {
                required: !0
            },
            locate: {
                required: !0
            },
            id: {
                required: !0,
                maxlength: 30
            },
            tel: {
                required: !0,
                minlength: 9,
                maxlength: 13
            },
            address: {
                required: !0
            },
            status_banner: {
                required: !0
            }
        },
        messages: {
            name_img: {
                required: "*Bạn phải nhập đầy đủ thông tin"
            },
            file_img: {
                required: ""
            },
            link_img: {
                required: "*Bạn phải nhập đầy đủ thông tin"
            },
            locate: {
                required: "Bạn không được bỏ trống"
            },
            id: {
                required: "*Bạn phải nhập đầy đủ",
                maxlength: "*Tên không quá 30 ký tự"
            },
            tel: {
                required: "*Bạn cần nhập số điện thoại",
                minlength: jQuery.validator.format("*Số điện thoại không ngắn quá 9 ký tự"),
                maxlength: jQuery.validator.format("*Số điện thoại không quá 13 ký tự")
            },
            address: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            status_banner: {
                required: "Bạn phải chọn mục này"
            }
        }
    }), $("#form--qckm").validate({
        rules: {
            name: {
                required: !0
            }
        },
        messages: {
            name: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#frm-thietlap").validate({
        rules: {
            name_website: {
                required: !0,
                maxlength: 64
            },
            txt_mota: {
                required: !0,
                maxlength: 250
            },
            txt_youtube: {
                required: !0
            },
            txt_facebook: {
                required: !0
            },
            txt_gmail: {
                required: !0
            },
            txt_phone: {
                required: !0,
                minlength: 10,
                maxlength: 11,
                regex: /^[0-9]*$/
            }
        },
        messages: {
            name_website: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("*Tên website không vượt quá 64 kí tự")
            },
            txt_mota: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("*Mô tả ngắn có chiều dài không quá 250 kí tự")
            },
            txt_youtube: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            txt_facebook: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            txt_gmail: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            txt_phone: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("*Sai định dạng số điện thoại"),
                maxlength: jQuery.validator.format("*Sai định dạng số điện thoại"),
                regex: "*Sai định dạng số điện thoại"
            }
        }
    }), $("#nv-edit").validate({
        rules: {
            pass: {
                required: !0
            },
            pass2: {
                required: !0
            }
        },
        messages: {
            pass: {
                required: "Bạn phải nhập thông tin"
            },
            pass2: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#nv-add").validate({
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
            //if ($(this)[0].submitButton.classList[0] == 'postbqc') {
            //    $.ajax({
            //        url: "",
            //        type: "POST",
            //        data: {  },
            //        success: function (result) {
            //            if (result == 0) {
            //            }
            //            else if (result == 1) {
            //            }
            //            else if (result == 10) {
            //                window.location.reload();
            //            }
            //            else if (result == 5) {
            //            }
            //            else {
            //            }
            //        }
            //    });
            //}
            //else {
                
            //    return false;
            //}
        }
    }), $("#form-qldn").validate({
        rules: {
            company_name: {
                required: !0,
                minlength: 3,
                maxlength: 500
            },
            abbr_name: {
                required: !0,
                minlength: 2,
                maxlength: 300
            },
            tel: {
                required: !0,
                minlength: 9,
                maxlength: 13,
                number: !0
            },
            email: {
                required: !0
            },
            address: {
                required: !0
            },
            amount: _defineProperty({
                required: !0,
                number: !0,
                maxlength: 4
            }, "number", !0),
            sodangky: {
                required: !0,
                minlength: 2,
                maxlength: 300
            },
            branch: {
                required: !0,
                minlength: 2,
                maxlength: 300
            },
            name: {
                required: !0,
                minlength: 3,
                maxlength: 50
            },
            tel_per: {
                required: !0,
                minlength: 9,
                maxlength: 13,
                number: !0
            },
            position: {
                required: !0,
                minlength: 3,
                maxlength: 100
            },
            email_per: {
                required: !0
            },
            name_phaply: {
                required: !0,
                minlength: 3,
                maxlength: 50
            },
            tel_phaply: {
                required: !0,
                minlength: 9,
                maxlength: 13,
                number: !0
            },
            position_phaply: {
                required: !0,
                minlength: 3,
                maxlength: 100
            },
            email_phaply: {
                required: !0
            }
        },
        messages: {
            company_name: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Tên công ty không được quá ngắn"),
                maxlength: jQuery.validator.format("Tên công ty không được quá dài")
            },
            abbr_name: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Tên viết tắt không được quá ngắn"),
                maxlength: jQuery.validator.format("Tên viết tắt không được quá dài")
            },
            tel: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Số điện thoại không được quá ngắn"),
                maxlength: jQuery.validator.format("Số điện thoại không được dài quá 13 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            email: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            address: {
                required: ""
            },
            amount: _defineProperty({
                required: "Bạn phải nhập đầy đủ thông tin",
                number: "Bạn chỉ được nhập số",
                maxlength: jQuery.validator.format("Số lượng tài khoản không được vượt quá 4")
            }, "number", "Bạn chỉ được nhập số"),
            sodangky: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Số đăng ký không được quá ngắn"),
                maxlength: jQuery.validator.format("Số đăng ký không được dài quá 300 ký tự")
            },
            branch: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Chi nhánh không được quá ngắn"),
                maxlength: jQuery.validator.format("Chi nhánh không được dài quá 300 ký tự")
            },
            name: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Họ tên không được quá ngắn"),
                maxlength: jQuery.validator.format("Họ tên không được dài quá 50 ký tự")
            },
            tel_per: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Số điện thoại không ngắn quá 9 ký tự"),
                maxlength: jQuery.validator.format("Số điện thoại không được dài quá 13 ký tự")
            },
            position: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Chức vụ không ngắn quá 3 ký tự"),
                maxlength: jQuery.validator.format("Chức vụ không được dài quá 100 ký tự")
            },
            email_per: {
                required: "Bạn phải nhập đẩy đủ thông tin"
            },
            name_phaply: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Họ tên người đại diện không được quá ngắn"),
                maxlength: jQuery.validator.format("Họ tên người đại diện không được dài quá 50 ký tự")
            },
            tel_phaply: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Số điện thoại không ngắn quá 9 ký tự"),
                maxlength: jQuery.validator.format("Số điện thoại không được dài quá 13 ký tự")
            },
            position_phaply: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Chức vụ không ngắn quá 3 ký tự"),
                maxlength: jQuery.validator.format("Chức vụ không được dài quá 100 ký tự")
            },
            email_phaply: {
                required: "Bạn phải nhập đẩy đủ thông tin"
            }
        }
    }), $("#registration__form").validate({
        rules: {
            name: {
                required: !0,
                minlength: 6,
                maxlength: 64,
                regex: /^[a-zA-Z0-9_-]*$/
            },
            email: {
                required: !0,
                minlength: 6,
                maxlength: 64
            },
            pass: {
                required: !0,
                maxlength: 64,
                minlength: 6,
                regex: /[A-Z0-9]+/
            },
            pass_confirm: {
                required: !0
            },
            fullname: {
                required: !0
            }
        },
        messages: {
            name: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Tên đăng nhập không được ngắn quá 6 ký tự"),
                maxlength: jQuery.validator.format("Tên đăng nhập không được dài quá 64 ký tự"),
                regex: "Tên đăng nhập không bao gồm ký tự đặc biệt"
            },
            email: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Email không được ngắn quá 6 ký tự"),
                maxlength: jQuery.validator.format("Email không được dài quá 30 ký tự")
            },
            pass: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                minlength: jQuery.validator.format("Pass không được ngắn quá 6 ký tự"),
                maxlength: jQuery.validator.format("Pass không được dài quá 30 ký tự"),
                regex: "Mật khẩu phải có ít nhất 1 số và 1 chữ cái viết hoa"
            },
            pass_confirm: {
                required: "Bạn phải nhập đẩy đủ thông tin"
            },
            fullname: {
                required: "Bạn phải nhập đẩy đủ thông tin"
            }
        }
    }), $("#tinrao_chinhsua").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            website: {
                required: !0
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            name: {
                maxlength: 100
            },
            address: {
                maxlength: 100
            },
            tel: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            email: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            website: {
                required: "Bạn phải nhập đẩy đủ thông tin"
            },
            giaca: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả tối đa 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            name: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            address: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            tel: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            email: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#registration-pano").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            website: {
                required: !0
            },
            kichThuoc: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            diachi: {
                required: !0
            },
            name: {
                maxlength: 100
            },
            address: {
                maxlength: 100
            },
            tel: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            email: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            website: {
                required: "Bạn phải nhập đẩy đủ thông tin"
            },
            kichThuoc: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Kích thước tối đa 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            giaca: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả tối đa 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            diachi: {
                required: "Bạn cần phải nhập đầy đủ thông tin"
            },
            name: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            address: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            tel: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            email: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#registration-qcinter").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            link: {
                required: !0,
                maxlength: 150
            },
            truycap: {
                required: !0,
                maxlength: 7,
                number: !0
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            name: {
                maxlength: 100
            },
            address: {
                maxlength: 100
            },
            tel: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            email: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            link: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Đường link tối đa 150 ký tự")
            },
            truycap: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Kích thước tối đa 7 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            giaca: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả tối đa 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            name: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            address: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            tel: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            email: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#registration-qctt").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            thoiluong: {
                required: !0,
                maxlength: 3,
                number: !0
            },
            kenh: {
                required: !0,
                maxlength: 15
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            name: {
                maxlength: 100
            },
            address: {
                maxlength: 100
            },
            tel: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            email: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            thoiluong: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Thời lượng tối đa 3 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            kenh: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Kích thước tối đa 15 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả tối đa 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            name: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            address: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            tel: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            email: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#form_timthuedvqc").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            address: {
                required: !0
            },
            nameLH: {
                maxlength: 100
            },
            diachiLH: {
                maxlength: 100
            },
            telLH: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            emailLH: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả không được quá 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            address: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#form_timthuepano").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            address: {
                required: !0
            },
            nameLH: {
                maxlength: 100
            },
            diachiLH: {
                maxlength: 100
            },
            telLH: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            emailLH: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả không được quá 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            address: {
                required: "Bạn phải nhập đẩy đủ thông tin"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#form_timthue_qcinter").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            address: {
                required: !0
            },
            nameLH: {
                maxlength: 100
            },
            diachiLH: {
                maxlength: 100
            },
            telLH: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            emailLH: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả không được quá 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            address: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#form_timthueqctt").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            address: {
                required: !0
            },
            nameLH: {
                maxlength: 100
            },
            diachiLH: {
                maxlength: 100
            },
            telLH: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            emailLH: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả không được quá 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            address: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#registration-pano-themmoi").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            kichThuoc: {
                required: !0,
                number: !0,
                maxlength: 5
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            donVi: {
                required: !0
            },
            address: {
                required: !0
            },
            nameLH: {
                maxlength: 100
            },
            diachiLH: {
                maxlength: 100
            },
            telLH: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            emailLH: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            kichThuoc: {
                required: "Bạn phải nhập đầy đủ thông tin",
                number: "Bạn chỉ được nhập số",
                maxlength: jQuery.validator.format("Kích thước không được vượt quá 5 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả không được quá 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            donVi: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            address: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#registration-qctt-themmoi").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            thoiluong: {
                required: !0,
                maxlength: 3,
                number: !0
            },
            kenh: {
                required: !0,
                maxlength: 15
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            name: {
                maxlength: 100
            },
            address: {
                maxlength: 100
            },
            tel: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            email: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            thoiluong: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Thời lượng tối đa 3 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            kenh: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Kích thước tối đa 15 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả tối đa 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#registration-qcinter-themmoi").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            link: {
                required: !0,
                maxlength: 150
            },
            truycap: {
                required: !0,
                maxlength: 7,
                number: !0
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            nameLH: {
                maxlength: 100
            },
            diachiLH: {
                maxlength: 100
            },
            telLH: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            emailLH: {
                required: !0
            },
            CaptchaCode: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            link: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Đường link tối đa 150 ký tự")
            },
            truycap: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Kích thước tối đa 7 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            giaca: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả tối đa 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            CaptchaCode: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#themmoi-chothue-dvqc").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            link: {
                required: !0,
                maxlength: 150
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            nameLH: {
                maxlength: 100
            },
            diachiLH: {
                maxlength: 100
            },
            telLH: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            emailLH: {
                required: !0
            },
            CaptchaCode: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            link: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Đường link tối đa 150 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đẩy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả tối đa 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            CaptchaCode: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#themmoi-timthuepanobqc").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            address: {
                required: !0
            },
            nameLH: {
                maxlength: 100
            },
            diachiLH: {
                maxlength: 100
            },
            telLH: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            emailLH: {
                required: !0
            },
            CaptchaCode: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả không được quá 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            address: {
                required: "Bạn phải nhập đẩy đủ thông tin"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            CaptchaCode: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    }), $("#themmoi-timthueqctt").validate({
        rules: {
            tieuDe: {
                required: !0,
                maxlength: 99,
                minlength: 30
            },
            giaca: {
                required: !0,
                maxlength: 5,
                number: !0
            },
            address: {
                required: !0
            },
            nameLH: {
                maxlength: 100
            },
            diachiLH: {
                maxlength: 100
            },
            telLH: {
                required: !0,
                number: !0,
                maxlength: 13,
                minlength: 9
            },
            emailLH: {
                required: !0
            },
            CaptchaCode: {
                required: !0
            }
        },
        messages: {
            tieuDe: {
                required: "Bạn phải nhập đầy đủ thông tin",
                minlength: jQuery.validator.format("Tiêu đề không được ngắn hơn 30 ký tự"),
                maxlength: jQuery.validator.format("Tiêu đề không được dài hơn 99 ký tự")
            },
            giaca: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Giá cả không được quá 5 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            address: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            nameLH: {
                maxlength: jQuery.validator.format("Tên liên hệ tối đa 100 ký tự")
            },
            diachiLH: {
                maxlength: jQuery.validator.format("Địa chỉ tối đa 100 ký tự")
            },
            telLH: {
                required: "Bạn phải nhập đầy đủ thông tin",
                maxlength: jQuery.validator.format("Số điện thoại tối đa 13 ký tự"),
                minlength: jQuery.validator.format("Số điện thoại tối thiểu là 9 ký tự"),
                number: "Bạn chỉ được nhập số"
            },
            emailLH: {
                required: "Bạn phải nhập đầy đủ thông tin"
            },
            CaptchaCode: {
                required: "Bạn phải nhập đầy đủ thông tin"
            }
        }
    })
});