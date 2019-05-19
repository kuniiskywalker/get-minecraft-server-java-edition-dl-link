package com.scraping;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        final ScrapeService scrapeService = new ScrapeService();
        System.out.println(scrapeService.getLink());
    }
}