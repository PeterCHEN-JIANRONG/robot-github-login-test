# robot-github-login-test
test github login by robot framework

1. 安裝Python:
請參考:https://dotblogs.com.tw/Johnes/2018/08/17/162422
3. 打開終端機輸入:
    - pip install robotframework
    - pip install robotframework-seleniumlibrary
4. 下載chromedriver放置python資料夾內:https://sites.google.com/a/chromium.org/chromedriver/
5. clone的git repo：
    - https://github.com/PeterCHEN-JIANRONG/robot-github-login-test.git
6. 打開資料夾，裡面有個setting.py檔案，輸入git帳號、密碼、使用者名稱。(帳密為登入使用，使用者名稱為驗證登入正確)
    - gitAccount = ""
    - gitPassword = ""
    - gitUserName = ""
7. 開啟終端機，cd至repo底下，並輸入指令執行robot：
    - robot -d log -V setting.py  test1.robot