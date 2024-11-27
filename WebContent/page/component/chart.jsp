<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%
    // Song 클래스 정의
    class Song {
        private String albumImage;
        private String subtitle;
        private String singer;
        private String album;
        private String time;

        public Song(String albumImage, String subtitle, String singer, String album, String time) {
            this.albumImage = albumImage;
            this.subtitle = subtitle;
            this.singer = singer;
            this.album = album;
            this.time = time;
        }

        public String getAlbumImage() {
            return albumImage;
        }

        public String getSubtitle() {
            return subtitle;
        }

        public String getSinger() {
            return singer;
        }

        public String getAlbum() {
            return album;
        }

        public String getTime() {
            return time;
        }
    }

    // songs 리스트 생성
    List<Song> songs = new ArrayList<>();
    songs.add(new Song("https://via.placeholder.com/50", "Song 1", "noname", "Album 1", "3:45"));
    songs.add(new Song("https://via.placeholder.com/50", "Song 2", "noname", "Album 2", "4:20"));
    songs.add(new Song("https://via.placeholder.com/50", "Song 3", "noname", "Album 3", "5:15"));
    // 필요에 따라 더 많은 노래 추가
%>

<div class="popular-chart">
    <div class="popular-bar-wrapper">
        <div class="popular-bar">
            <div class="popular-bar-text">#</div>
            <div class="popular-bar-menu">
                <div>제목</div>
                <div>앨범</div>
                <div>시간</div>
            </div>
        </div>
    </div>
    <hr class="divider" />
    <div class="song-list-wrapper">
        <div class="song-list">
            <%
                for (int index = 0; index < songs.size(); index++) {
                    Song song = songs.get(index);
            %>
                <div class="song-item">
                    <div class="list-num"><%= index + 1 %></div>
                    <div class="album-box">
                        <div class="list-album-cover">
                            <img src="<%= song.getAlbumImage() %>" alt="<%= song.getAlbum() %>" class="album-image" />
                        </div>
                        <div class="album-title-box">
                            <div class="list-subtitle"><%= song.getSubtitle() %></div>
                            <div class="list-singer"><%= song.getSinger() %></div>
                        </div>
                    </div>
                    <div class="list-album"><%= song.getAlbum() %></div>
                    <div class="list-time"><%= song.getTime() %></div>
                </div>
            <%
                }
            %>
        </div>
    </div>
</div>
