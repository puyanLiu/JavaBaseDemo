.class final Lcom/alipay/android/app/ui/quickpay/window/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/ag;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/ag;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ai;->a:Lcom/alipay/android/app/ui/quickpay/window/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 952
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ai;->a:Lcom/alipay/android/app/ui/quickpay/window/ag;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/ag;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/pay/Result;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    :try_start_1
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 957
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
