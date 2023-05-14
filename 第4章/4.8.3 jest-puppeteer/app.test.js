describe("app", () => { 
    beforeEach(async () => { 
    await page.goto("https://www.baidu.com"); 
    }); 
    it("访问百度，是否有百度字段", async () => { 
    await expect(page).toMatch("百度"); 
    }); 
    it("是否有百度新闻入口", async () => { 
    await expect(page).toMatch("新闻"); 
    }); 
   });