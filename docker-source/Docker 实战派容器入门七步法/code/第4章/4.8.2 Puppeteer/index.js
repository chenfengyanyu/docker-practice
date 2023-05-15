const puppeteer = require("puppeteer");
(async () => {
    //启动浏览器，新建一个页签
    const browser = await puppeteer.launch();
    const page = await browser.newPage();

    // 定义 onCustomEvent 事件监听
    await page.exposeFunction("onCustomEvent", (e) => {
        console.log(`${e.type} fired`, e.detail || "");
    });
    await page.goto("https://www.test.com", {
        waitUntil: "networkidle0",
    });
    await browser.close();
})();
