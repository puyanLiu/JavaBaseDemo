.class public Lcom/alipay/android/app/base/trade/TradeManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/base/trade/TradeManager;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/base/trade/Trade;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/IAlipayCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->e()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->c:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->d:Landroid/util/SparseArray;

    .line 38
    return-void
.end method

.method public static final declared-synchronized a()Lcom/alipay/android/app/base/trade/TradeManager;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/alipay/android/app/base/trade/TradeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/base/trade/TradeManager;->a:Lcom/alipay/android/app/base/trade/TradeManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/alipay/android/app/base/trade/TradeManager;

    invoke-direct {v0}, Lcom/alipay/android/app/base/trade/TradeManager;-><init>()V

    sput-object v0, Lcom/alipay/android/app/base/trade/TradeManager;->a:Lcom/alipay/android/app/base/trade/TradeManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/alipay/android/app/base/trade/TradeManager;->a:Lcom/alipay/android/app/base/trade/TradeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/alipay/android/app/base/trade/Trade;)V
    .locals 0

    .prologue
    .line 145
    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/alipay/android/app/base/trade/Trade;->g()V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alipay/android/app/IRemoteCallback;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IRemoteCallback;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/IRemoteCallback;)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->c:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    return-void
.end method

.method public final declared-synchronized a(Lcom/alipay/android/app/base/trade/Trade;)V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/alipay/android/app/base/trade/Trade;->d()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)Lcom/alipay/android/app/base/trade/Trade;
    .locals 4

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 66
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/trade/Trade;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->e()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    .line 74
    :goto_1
    monitor-exit p0

    return-object v0

    .line 66
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->c:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 51
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 122
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/trade/Trade;

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->d()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->c(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    .line 122
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

.method public final declared-synchronized c(I)V
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(I)Lcom/alipay/android/app/base/trade/Trade;
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/trade/Trade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/trade/Trade;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->g()V

    .line 136
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method public final declared-synchronized e(I)Z
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(I)Lcom/alipay/android/app/IAlipayCallback;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/TradeManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IAlipayCallback;

    return-object v0
.end method
