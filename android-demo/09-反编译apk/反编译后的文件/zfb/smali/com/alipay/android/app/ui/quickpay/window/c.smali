.class final Lcom/alipay/android/app/ui/quickpay/window/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->c:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->c:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->c:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->f()Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    .line 607
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->c:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->c:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->c:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iput-object v1, v0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->F:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    .line 609
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->c:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 610
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->b:Landroid/view/ViewGroup;

    const-string/jumbo v1, "#e0000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 612
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/c;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/d;-><init>(Lcom/alipay/android/app/ui/quickpay/window/c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
