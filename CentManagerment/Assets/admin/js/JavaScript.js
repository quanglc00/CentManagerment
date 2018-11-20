function updateAccount(i) {
    var Account = {
        UserId: $($('.UserId').get(i)).val(),
        UserCreateDate: $($('.UserCreateDate').get(i)).val(),
        UserPhone: $($('.UserPhone').get(i)).val(),
        UserEmail: $($('.UserEmail').get(i)).val(),
        UserPassword: $($('.UserPassword').get(i)).val()
    };
    $.ajax({
        url: "/Account/UpdateAccount",
        type: "post",
        data: { user: Account },
        success: function (resultCode) {
            if (resultCode.resultCode == 1) {
                var listAccount = resultCode.listAccount;
                $($('tr').get(i + 1)).empty();
                var htmlAccount = "";
                var status = "";
                if (listAccount[i].UserStatus == 1) {
                    status = "Hoạt Động";
                }
                else if (listAccount[i].UserStatus == 2) {
                    status = "Chưa Kích Hoạt";
                }
                else if (listAccount[i].UserStatus == 3) {
                    status = "Bị Ẩn";
                }
                htmlAccount += '< td >';
                htmlAccount += '    <input class="item-checkbox" type="checkbox" value="item" />';
                htmlAccount += '</td>';
                htmlAccount += '    <td>' + listAccount[i].UserId +'</td>';
                htmlAccount += '    <td>' + listAccount[i].UserAccount +'</td>';
                htmlAccount += '    <td>' + listAccount[i].UserName + '</td>';
                htmlAccount += '    <td>' + listAccount[i].UserPhone + '</td>';
                htmlAccount += '    <td><span>' + listAccount[i].UserEmail + '</span></td>';
                htmlAccount += '    <td>Quản Lý</td>';
                htmlAccount += '    <td>' + listAccount[i].UserCreateDate + '</td>';
                htmlAccount += '    <td>' + status + '</td>';
                htmlAccount += '    <td>';
                htmlAccount += '        <span class="icon-menu">';
                htmlAccount += '            <i class="fa fa-plus-circle"></i>';
                htmlAccount += '            <ul>';
                htmlAccount += '                <li>Sửa nhanh</li>';
                htmlAccount += '                <li>Nhân bản</li>';
                htmlAccount += '                <li>Bỏ thùng rác</li>';
                htmlAccount += '            </ul>';
                htmlAccount += '        </span>';
                htmlAccount += '    </td>';
                $($('tr').get(i + 1)).append(htmlAccount);
            }
        }
    });
}