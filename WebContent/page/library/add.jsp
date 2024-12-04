<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="contentbox">	
    <form action="uploadMusic" method="post" enctype="multipart/form-data">
        <label for="title">제목:</label>
        <input type="text" name="title" required><br>
        
        <label for="artist">아티스트:</label>
        <input type="text" name="artist" required><br>
        
        <label for="musicFile">음악 파일:</label>
        <input type="file" name="musicFile" accept="audio/*" required><br>
        
        <input type="submit" value="업로드">
    </form>
</div>
