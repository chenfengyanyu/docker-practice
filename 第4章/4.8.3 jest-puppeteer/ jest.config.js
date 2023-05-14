module.exports = { 
    preset: "jest-puppeteer", 
    testRegex: "./*\\.test\\.js$", 
    transform: { 
    "^.+\\.js": "babel-jest", 
    }, 
    "testResultsProcessor": "./node_modules/jest-html-reporter", 
"reporters": [ 
 "default", 
 ["./node_modules/jest-html-reporter", { 
 "pageTitle": "Test Report" 
 }] 
]
   };