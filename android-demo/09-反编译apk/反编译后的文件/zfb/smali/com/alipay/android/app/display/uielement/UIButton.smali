.class public Lcom/alipay/android/app/display/uielement/UIButton;
.super Lcom/alipay/android/app/display/uielement/UILabel;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/ISubmitable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILabel;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UIButton;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/display/uielement/UIButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Button:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 0

    .prologue
    .line 28
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/UIButton;->a(Landroid/content/Context;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Landroid/content/Context;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    .line 71
    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/UIButton;->c:Landroid/widget/TextView;

    .line 73
    new-instance v0, Lcom/alipay/android/app/display/uielement/u;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/u;-><init>(Lcom/alipay/android/app/display/uielement/UIButton;)V

    .line 83
    new-instance v1, Lcom/alipay/android/app/display/uielement/v;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/display/uielement/v;-><init>(Lcom/alipay/android/app/display/uielement/UIButton;Landroid/os/Handler;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    .line 48
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/UILabel;->c(Landroid/os/Handler;Z)V

    .line 134
    new-instance v0, Lcom/alipay/android/app/display/uielement/x;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/x;-><init>(Lcom/alipay/android/app/display/uielement/UIButton;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/UILabel;->dispose()V

    .line 150
    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->c:Landroid/widget/TextView;

    .line 151
    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public final i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/UILabel;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIButton;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected final o()I
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "msp_ui_button"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
