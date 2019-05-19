package com.scraping;

import static org.mockito.Mockito.*;

import org.junit.Test;

import java.io.File;
import java.io.IOException;

import static org.junit.Assert.assertEquals;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class ScrapeServiceTest {

    @Test
    public void getLink() throws IOException {

        ScrapeService mockService = spy(new ScrapeService());

        Document document = Jsoup.parse(new File("index.html"), "UTF-8");
        when(mockService.getHtml()).thenReturn(document);

        String expected = "https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar";

        assertEquals(expected, mockService.getLink());
    }
}