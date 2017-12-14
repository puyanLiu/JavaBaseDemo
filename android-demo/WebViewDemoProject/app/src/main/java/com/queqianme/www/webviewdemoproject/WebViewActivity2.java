package com.queqianme.www.webviewdemoproject;

import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

/**
 * Created by liupuyan on 2017/12/8.
 */
public class WebViewActivity2 extends AppCompatActivity implements View.OnClickListener {

    private Button btn_top;
    private Button btn_refresh;
    private Button btn_back;
    private TextView txt_title;
    private WebView wb_webView;
    private long exitTime = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_webview2);

        bindViews();
    }

    private void bindViews() {
        btn_back = (Button) findViewById(R.id.btn_back);
        btn_refresh = (Button) findViewById(R.id.btn_refresh);
        btn_top = (Button) findViewById(R.id.btn_top);
        txt_title = (TextView) findViewById(R.id.txt_Title);
        wb_webView = (WebView) findViewById(R.id.wb_webView);

        btn_back.setOnClickListener(this);
        btn_refresh.setOnClickListener(this);
        btn_top.setOnClickListener(this);

        wb_webView.loadUrl("http://www.baidu.com");
        wb_webView.getSettings().setJavaScriptEnabled(true); // 设置WebView属性,运行执行js脚本
        wb_webView.setWebChromeClient(new WebChromeClient() {
            // 设置获取网站的title

            @Override
            public void onReceivedTitle(WebView view, String title) {
                super.onReceivedTitle(view, title);
                txt_title.setText(title);
            }
        });

        // WebViewClient 辅助WebView处理各种通知与请求事件
        wb_webView.setWebViewClient(new WebViewClient() {
            // 设置在webView点击打开的新网页在当前界面显示，而不跳转到新的浏览器中

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                // 网址重定向，导致点击返回按键，并没有退出
                view.loadUrl(url);
                return false;
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                if (Build.VERSION.SDK_INT > Build.VERSION_CODES.LOLLIPOP) {
                    wb_webView.loadUrl(request.getUrl().toString());
                }
                return false;
            }
        });


    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_back:
                finish();
                break;
            case R.id.btn_refresh:
                wb_webView.reload(); // 刷新当前界面
                break;
            case R.id.btn_top:
                wb_webView.setScrollY(0); // 滚动到顶部
                break;
        }
    }

    /**
     * 当用户点击回退按钮:
     * 1.webView.canGoBack()判断网页是否能后退,可以则goback()
     * 2.如果不可以连续点击两次退出App,否则弹出提示Toast
     */
    @Override
    public void onBackPressed() {
        if (wb_webView.canGoBack()) {
            wb_webView.goBack();
        } else {
            if ((System.currentTimeMillis() - exitTime) > 2000) {
                Toast.makeText(this, "再按一次退出程序", Toast.LENGTH_SHORT).show();
                exitTime = System.currentTimeMillis();
            } else {
                super.onBackPressed();
            }
        }
    }
}