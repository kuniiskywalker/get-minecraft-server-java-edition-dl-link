package com.scraping;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import java.io.IOException;

public class ScrapeService {
    private String url = "https://www.minecraft.net/ja-jp/download/server/";

    public Document getHtml() throws IOException {
        return Jsoup.connect(url).get();
    }

    public String getLink() throws IOException {
        Document document = this.getHtml();

        Elements elements = document.select("div.minecraft-version a");

        String url = elements.first().attr("href");

        return url;
    }
}