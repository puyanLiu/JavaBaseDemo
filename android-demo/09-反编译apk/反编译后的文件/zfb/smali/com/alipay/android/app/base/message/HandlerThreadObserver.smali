.class public Lcom/alipay/android/app/base/message/HandlerThreadObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IObserver;


# instance fields
.field private a:I

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->c:Landroid/os/Handler;

    .line 24
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->a:I

    .line 25
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "HandlerThreaderObsever--Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->b:Landroid/os/HandlerThread;

    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->c:Landroid/os/Handler;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->a:I

    return v0
.end method

.method public final declared-synchronized a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 5

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 34
    instance-of v1, v0, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->c:Landroid/os/Handler;

    check-cast v0, Ljava/lang/Runnable;

    iget-wide v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->e:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/alipay/android/app/base/message/MspMessage;

    if-eqz v1, :cond_0

    .line 37
    check-cast v0, Lcom/alipay/android/app/base/message/MspMessage;

    .line 38
    iget-wide v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->e:J

    iget-object v3, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->c:Landroid/os/Handler;

    new-instance v4, Lcom/alipay/android/app/base/message/a;

    invoke-direct {v4, p0, v0}, Lcom/alipay/android/app/base/message/a;-><init>(Lcom/alipay/android/app/base/message/HandlerThreadObserver;Lcom/alipay/android/app/base/message/MspMessage;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
.end method
