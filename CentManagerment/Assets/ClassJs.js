// delete class by id ajax
function DeleteClass(classId) {
    var confirms = confirm("Do you want delete it!");
    if (confirms) {
        console.log(confirms)
        console.log(classId)
        $.ajax({
            type: 'POST',
            url: "/ClassManagerment/Delete",
            data: { classId },
            success: function (result) {
                console.log(result)
                alert("success!");
                location.reload();
            }
        })
    }
}
/// get course by id ajax
$('#courseId').change(function () {
    var courseId = $('#courseId option:selected').val();
    console.log(courseId);
    $.ajax({
        url: "/ClassManagerment/CourseSelect",
        type: 'POST',
        data: { courseId: courseId},
        success: function (result) {
            console.log(result);
            $('#courseTime').val(result.CourseTime);
            $('#courseName').val(result.CourseName);
            $('#coursePrice').val(result.CousePrice);
            $('#Id').val(result.CourseId);

        }
    })
})