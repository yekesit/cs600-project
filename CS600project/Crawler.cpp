//
// Created by Ke Ye on 2017/11/24.
//

#include <iostream>
#include <curl/curl.h>
#include <fstream>

using namespace std;

static size_t downloadCallback(void *buffer, size_t sz, size_t nmemb, void *writer)
{
    string* psResponse = (string*) writer;
    size_t size = sz * nmemb;
    psResponse->append((char*) buffer, size);

    return sz * nmemb;
}

//use CURL to get HTML file from the given website and put it into "transfer.txt" to be used at next step.
void Crawler(const string& Url){
    string strUrl = Url;
    string strTmpStr;
    CURL *curl = curl_easy_init();
    curl_easy_setopt(curl, CURLOPT_URL, strUrl.c_str());
    curl_easy_setopt(curl, CURLOPT_NOSIGNAL, 1L);
    curl_easy_setopt(curl, CURLOPT_TIMEOUT, 2);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, downloadCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &strTmpStr);
    CURLcode res = curl_easy_perform(curl);
    curl_easy_cleanup(curl);
    string strRsp;
    if (res != CURLE_OK)
    {
        strRsp = "error";
    }
    else
    {
        strRsp = strTmpStr;
    }

    fstream file("transfer.txt", ios::out);

    int head,tail;
    int flag = 0;
    for(int i = 0; i < strRsp.length(); i++){
        if(strRsp[i] == '<'){
            tail = i - 1;
            if(tail >= head){
                string s(strRsp, head, tail - head + 1);
                if(s.length() <= 1) {
                    continue;
                }
                for(int j = 0; j < s.length(); j++){
                    if(s[j] >= 'A' && s[j] <= 'Z')
                        s[j] = 'a' + s[j] - 'A';
                    if(s[j] >= 'a' && s[j] <= 'z'){
                        file << s[j];
                        flag = 1;
                    }
                    else{
                        if(flag == 1) {
                            file << '\n';
                            flag = 0;
                        }
                    }
                }
            }
        }
        if(strRsp[i] == '>'){
            head = i + 1;
        }
    }
    file.close();

}