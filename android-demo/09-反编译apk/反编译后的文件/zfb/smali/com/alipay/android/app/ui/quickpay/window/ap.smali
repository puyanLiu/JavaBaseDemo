.class final Lcom/alipay/android/app/ui/quickpay/window/ap;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ap;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    .prologue
    .line 259
    const-string/jumbo v0, "<head>"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v0, "sdk_result_code:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v0, "sdk_result_code:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 263
    const-string/jumbo v1, "-->"

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 265
    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lcom/alipay/android/app/pay/Result;->a(Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/aq;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/aq;-><init>(Lcom/alipay/android/app/ui/quickpay/window/ap;)V

    .line 277
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ap;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    :cond_0
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ap;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 251
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ap;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 254
    :cond_0
    return-void
.end method
