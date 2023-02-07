<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

    <div class="container my-3">
        <form>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Enter title" name="title" id="title" value="${dto.title}">
            </div>

            <div class="form-group">
                <textarea class="form-control summernote" rows="5" id="content" name="content">
                    ${dto.content}
                </textarea>
            </div>
        </form>
        <button type="button" onclick="updateById(${dto.id})" class="btn btn-primary">글수정완료</button>

    </div>

    <script>
        $('.summernote').summernote({
            tabsize: 2,
            height: 400
        });

        function updateById(id) {
            // 값 받아오기
            let post = {
                title: $("#title").val(),
                content: $("#content").val()
            };
            // 수정
            $.ajax({
                type: "put",
                url: `/board/`+id,
                data: JSON.stringify(post),
                headers: {
                    "Content-Type": "application/json; charset=utf-8"
                },
                dataType: "json"
            }).done((res) => { 
                alert("수정성공");
                location.href = "/";
            }).fail((err) => { 
                alert(err.responseJSON.msg);
            });
        }
    </script>

<%@ include file="../layout/footer.jsp" %>