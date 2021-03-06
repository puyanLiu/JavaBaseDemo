package com.example.liupuyan.a06_activitydemo;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    public String tag = "liu";

    // 生命周期相关方法
    /*该方法是在Activity被创建时回调，它是生命周期第一个调用的方法，我们在创建Activity时一般都需要重写该方法，
    然后在该方法中做一些初始化的操作，如通过setContentView设置界面布局的资源，初始化所需要的组件信息等*/
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Log.i(tag, "-----------------------main create-----------------------");
    }

    /*此方法被回调时表示Activity正在启动，此时Activity已处于可见状态，只是还没有在前台显示，因此无法与用户进行交互。
        可以简单理解为Activity已显示而我们无法看见*/
    @Override
    protected void onStart() {
        super.onStart();

        Log.i(tag, "-----------------------main start-----------------------");
    }

    /*当此方法回调时，则说明Activity已在前台可见，可与用户交互了（处于前面所说的Active/Running形态），
    onResume方法与onStart的相同点是两者都表示Activity可见，只不过onStart回调时Activity还是后台无法与用户交互，
    而onResume则已显示在前台，可与用户交互。当然从流程图，我们也可以看出当Activity停止后（onPause方法和onStop方法被调用），
    重新回到前台时也会调用onResume方法，因此我们也可以在onResume方法中初始化一些资源，
    比如重新初始化在onPause或者onStop方法中释放的资源*/
    @Override
    protected void onResume() {
        super.onResume();

        Log.i(tag, "-----------------------main resume-----------------------");
    }

    /*此方法被回调时则表示Activity正在停止（Paused形态），一般情况下onStop方法会紧接着被回调。
    但通过流程图我们还可以看到一种情况是onPause方法执行后直接执行了onResume方法，
    这属于比较极端的现象了，这可能是用户操作使当前Activity退居后台后又迅速地再回到到当前的Activity，
    此时onResume方法就会被回调。当然，在onPause方法中我们可以做一些数据存储或者动画停止或者资源回收的操作，
    但是不能太耗时，因为这可能会影响到新的Activity的显示——onPause方法执行完成后，新Activity的onResume方法才会被执行*/
    @Override
    protected void onPause() {
        super.onPause();

        Log.i(tag, "-----------------------main pause-----------------------");
    }

    /*一般在onPause方法执行完成直接执行，表示Activity即将停止或者完全被覆盖（Stopped形态），此时Activity不可见，
    仅在后台运行。同样地，在onStop方法可以做一些资源释放的操作（不能太耗时）*/
    @Override
    protected void onStop() {
        super.onStop();

        Log.i(tag, "-----------------------main stop-----------------------");
    }

    /*表示Activity正在重新启动，当Activity由不可见变为可见状态时，该方法被回调。
    这种情况一般是用户打开了一个新的Activity时，当前的Activity就会被暂停（onPause和onStop被执行了），
    接着又回到当前Activity页面时，onRestart方法就会被回调*/
    @Override
    protected void onRestart() {
        super.onRestart();

        Log.i(tag, "-----------------------main restart-----------------------");
    }

    /*此时Activity正在被销毁，也是生命周期最后一个执行的方法，一般我们可以在此方法中做一些回收工作和最终的资源释放*/
    @Override
    protected void onDestroy() {
        super.onDestroy();

        Log.i(tag, "-----------------------main destory-----------------------");

    }

    // 隐式启动打电话
    public void showImplictCallClick(View v) {
        Intent intent = new Intent();
        intent.setAction(Intent.ACTION_CALL);
        intent.setData(Uri.parse("tel:224324235"));
        startActivity(intent);
    }

    // 显示启动拨号器
    public void showDialClick(View v) {
        Intent intent = new Intent();
        // 参数1：目标Activity所在应用的包名
        // 参数2：目标Activity的类名，要带包名
        // 拨号界面
        intent.setClassName("com.android.contacts", "com.android.contacts.activities.DialtactsActivity");
        intent.setData(Uri.parse("tel:224324235"));
        startActivity(intent);
    }

    // 隐式启动拨号器
    public void showImplictDialClick(View v) {
        Intent intent = new Intent();
        intent.setAction(Intent.ACTION_DIAL);
        intent.setData(Uri.parse("tel:123344235"));
        startActivity(intent);
    }

    // 显式启动SecondActivity
    public void showSecondClick(View v) {
        // 通过设置Activity的包名和类名实现跳转，称为显式意图
        Intent intent = new Intent();
        // 设置上下文和目标Activity的字节码
        intent.setClass(this, SecondActivity.class);

        // 数据封装到intent中
        intent.putExtra("name", "main传递的");

        // Bundle传递
        Bundle extras = new Bundle();
        extras.putString("bundle", "main通过bundle传递的");
        intent.putExtras(extras);

        startActivity(intent);
    }

    // 隐式启动SecondActivity
    public void showImplictSecondClick(View v) {
        Log.i("liu", "哈哈");
        // 通过指定动作实现跳转，称为隐式跳转
        // 方式一
//        Intent intent = new Intent();
//        intent.setAction("a.b.c2");
//        // 如果没有设置Category，自动匹配到DEFAULT，配置文件中必须设置此项
//        intent.addCategory(Intent.CATEGORY_DEFAULT);
//        startActivity(intent);

        // 方式二
//        Intent intent = new Intent();
//        intent.setAction("a.b.c");
//        // 如果没有设置Category，自动匹配到DEFAULT，配置文件中必须设置此项
//        intent.addCategory(Intent.CATEGORY_DEFAULT);
//        intent.setData(Uri.parse("qqm:嘿嘿"));
//        startActivity(intent);

        // 方式三
        Intent intent = new Intent();
        intent.setAction("a.b.c");
        // 如果没有设置Category，自动匹配到DEFAULT，配置文件中必须设置此项
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setDataAndType(Uri.parse("qqm2:呵呵"), "text/name");

        // 数据封装到intent中
        intent.putExtra("name", "main传递的");

        // Bundle传递
        Bundle extras = new Bundle();
        extras.putString("bundle", "main通过bundle传递的");
        intent.putExtras(extras);

        startActivity(intent);
    }

    // 显式启动浏览器
    public void showBrowserClick(View v) {
        Intent intent = new Intent();
        intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
        startActivity(intent);
    }

    // 隐式启动浏览器
    public void showImplictBrowserClick(View v) {
        Intent intent = new Intent();
        intent.setAction(Intent.ACTION_VIEW);
        Uri url = Uri.parse("http://www.baidu.com");
        intent.setData(url);
        startActivity(intent);
    }

    // 跳转到生命周期
    public void jumpLifeClick(View v) {
        Intent intent = new Intent();
        intent.setClass(this, LifeActivity.class);
        startActivity(intent);
    }

}
