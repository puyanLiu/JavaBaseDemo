.class final Lcom/alipay/android/app/ui/quickpay/window/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/f;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/f;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/f;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a()Ljava/util/List;

    move-result-object v0

    .line 732
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 733
    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-eqz v2, :cond_0

    .line 734
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->f()V

    goto :goto_0

    .line 738
    :cond_1
    return-void
.end method
