.class public Lcom/alipay/android/app/template/MspTemplateServiceImpl;
.super Lcom/alipay/android/app/template/MspTemplateService;
.source "MspTemplateServiceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/android/app/template/MspTemplateService;-><init>()V

    return-void
.end method


# virtual methods
.method public fromHtml(FLjava/lang/String;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 27
    invoke-static {p1, p2}, Lcom/alipay/android/app/html/Html;->a(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getProtocalVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/content/Context;)V

    .line 22
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/MspTemplateService;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method
