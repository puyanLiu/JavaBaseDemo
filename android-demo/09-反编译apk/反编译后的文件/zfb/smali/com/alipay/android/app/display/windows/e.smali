.class final Lcom/alipay/android/app/display/windows/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/windows/MspWindow;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/windows/MspWindow;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 614
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->b(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/display/windows/WindowElements;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->b(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/display/windows/WindowElements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/display/windows/WindowElements;->a()[Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 616
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/alipay/android/app/sys/IDispose;

    if-eqz v4, :cond_0

    .line 617
    check-cast v0, Lcom/alipay/android/app/sys/IDispose;

    .line 618
    invoke-interface {v0}, Lcom/alipay/android/app/sys/IDispose;->dispose()V

    .line 615
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->c(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/display/windows/WindowElements;

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->d(Lcom/alipay/android/app/display/windows/MspWindow;)Z

    .line 624
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->e(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/script/IWindowScriptable;

    .line 625
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->f(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/data/DataProcessor;

    .line 626
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->g(Lcom/alipay/android/app/display/windows/MspWindow;)Landroid/os/Handler;

    .line 627
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->h(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/data/WindowFrameData;

    .line 628
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->i(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/data/WindowFrameData;

    .line 629
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/e;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->j(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/data/ValidatedFrameData;

    .line 630
    return-void
.end method
