.class public Lcom/alipay/android/app/ui/quickpay/uielement/UISpan;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 20
    check-cast p2, Landroid/widget/TextView;

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISpan;->k()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISpan;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISpan;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISpan;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    .line 55
    return-void
.end method

.method protected final p()I
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "mini_ui_span"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
