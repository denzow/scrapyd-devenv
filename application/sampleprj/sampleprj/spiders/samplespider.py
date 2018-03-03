# -*- coding: utf-8 -*-
import scrapy


class SamplespiderSpider(scrapy.Spider):
    name = 'samplespider'
    allowed_domains = ['xxx.com']
    start_urls = ['http://xxx.com/']

    def parse(self, response):
        pass
