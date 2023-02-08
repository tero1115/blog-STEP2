package shop.mtcoding.blog.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class HtmlParse {

    // content 내용을 Document로 받고, img 찾아내서(0, 1, 2), src를 찾아서 thumbnail에 추가
    public static String 파싱하기(String content) {

        String html = content;
        Document doc = Jsoup.parse(html);
        Elements els = doc.select("img");
        if (els.size() == 0) {
            // 임시 사진 제공해주기
            // 디비 thumbnail -> /images/profile.jpeg
            String img = "/images/dora.png";
            return img;
        } else {
            Element el = els.get(0);
            String img = el.attr("src");
            System.out.println(img);
            // 디비 thumbnail -> img
            return img;
        }

    }
}
