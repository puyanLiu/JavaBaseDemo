.class final Lcom/alipay/android/app/display/uielement/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UICheckBox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICheckBox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ah;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/ah;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ah;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->f(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ah;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ah;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->f(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/ah;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UICheckBox;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ah;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->d(Lcom/alipay/android/app/display/uielement/UICheckBox;)V

    .line 316
    :cond_0
    return-void
.end method
