.class public Lcom/alipay/asset/common/util/CommonResultUtil;
.super Ljava/lang/Object;
.source "CommonResultUtil.java"


# static fields
.field private static a:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 33
    sput-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object p0

    .line 197
    :cond_0
    if-eqz p0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {p0}, Lcom/alipay/asset/common/util/CommonResultUtil;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000058"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "IS_RESET"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {p0}, Lcom/alipay/asset/common/util/CommonResultUtil;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000051"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$2()V
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-static {p0}, Lcom/alipay/asset/common/util/CommonResultUtil;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showErrorResult(Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->success:Z

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->resultCode:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "1608"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    new-instance v4, Lcom/alipay/asset/common/util/CommonResultUtil$5;

    invoke-direct {v4, p1}, Lcom/alipay/asset/common/util/CommonResultUtil$5;-><init>(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->resultView:Ljava/lang/String;

    sget v3, Lcom/alipay/android/phone/wealth/common/R$string;->real_name:I

    invoke-static {v3}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/alipay/android/phone/wealth/common/R$string;->give_up:I

    invoke-static {v5}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 49
    :cond_2
    const-string/jumbo v0, "190"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "191"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "1830"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "1831"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 50
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->resultView:Ljava/lang/String;

    sget v3, Lcom/alipay/android/phone/wealth/common/R$string;->ensure:I

    invoke-static {v3}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 49
    goto :goto_1

    .line 51
    :cond_4
    const-string/jumbo v0, "192"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->resultView:Ljava/lang/String;

    sget v3, Lcom/alipay/android/phone/wealth/common/R$string;->find_pay_password:I

    invoke-static {v3}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/asset/common/util/CommonResultUtil$4;

    invoke-direct {v4, p1}, Lcom/alipay/asset/common/util/CommonResultUtil$4;-><init>(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    sget v5, Lcom/alipay/android/phone/wealth/common/R$string;->cancel:I

    invoke-static {v5}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 54
    :cond_5
    const-string/jumbo v0, "1832"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 56
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->resultView:Ljava/lang/String;

    sget v3, Lcom/alipay/android/phone/wealth/common/R$string;->find_pay_password:I

    invoke-static {v3}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/asset/common/util/CommonResultUtil$2;

    invoke-direct {v4, p1}, Lcom/alipay/asset/common/util/CommonResultUtil$2;-><init>(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    sget v5, Lcom/alipay/android/phone/wealth/common/R$string;->cancel:I

    invoke-static {v5}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 57
    :cond_6
    const-string/jumbo v0, "1684"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->resultView:Ljava/lang/String;

    sget v3, Lcom/alipay/android/phone/wealth/common/R$string;->ensure:I

    invoke-static {v3}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/asset/common/util/CommonResultUtil$3;

    invoke-direct {v4}, Lcom/alipay/asset/common/util/CommonResultUtil$3;-><init>()V

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 60
    :cond_7
    iget v0, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->showType:I

    if-ne v0, v3, :cond_8

    .line 61
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->resultView:Ljava/lang/String;

    sget v3, Lcom/alipay/android/phone/wealth/common/R$string;->ensure:I

    invoke-static {v3}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 63
    :cond_8
    iget v0, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->showType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 65
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->resultView:Ljava/lang/String;

    sget v3, Lcom/alipay/android/phone/wealth/common/R$string;->ensure:I

    invoke-static {v3}, Lcom/alipay/asset/common/util/ResourcesUtil;->getWealthCommonString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v4, Lcom/alipay/asset/common/util/CommonResultUtil$1;

    invoke-direct {v4, p1}, Lcom/alipay/asset/common/util/CommonResultUtil$1;-><init>(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    move-object v5, v1

    move-object v6, v1

    .line 65
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 75
    :cond_9
    sget-object v0, Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 76
    iget-object v1, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->resultView:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
