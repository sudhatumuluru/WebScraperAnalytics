import bs4, requests, time, subprocess

while(True):
    res=requests.get('https://www.example.com/')
    res.raise_for_status()
    noStarchSoup=bs4.BeautifulSoup(res.text,"html.parser")
    type(noStarchSoup)
    html_elements = noStarchSoup.select('span')[2]
    str(html_elements)
    curr_time = html_elements.getText()
    print(html_elements.getText())
    subprocess.call(['./signalfx_trial.sh',curr_time[6:]])
    time.sleep(30)
