.class public Lcom/alipay/android/app/base/trade/Trade;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

.field private e:Lcom/alipay/android/app/base/pay/IActivityAdapter;

.field private f:Lcom/alipay/android/app/base/pay/IActivityAdapter;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/alipay/android/app/base/trade/Trade;->g:Z

    .line 53
    iput-boolean v0, p0, Lcom/alipay/android/app/base/trade/Trade;->i:Z

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->j:Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/alipay/android/app/base/trade/Trade;->a:I

    .line 61
    iput p2, p0, Lcom/alipay/android/app/base/trade/Trade;->b:I

    .line 62
    iput-object p3, p0, Lcom/alipay/android/app/base/trade/Trade;->c:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/alipay/android/app/base/trade/Trade;->d:Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    .line 65
    const-string/jumbo v0, " PayEntrance  pay  send first request "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 66
    invoke-static {p3}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    const-string/jumbo v1, "no_loading"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v1, "no_loading"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/base/trade/Trade;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/alipay/android/app/base/trade/Trade;->h:I

    .line 156
    return-void
.end method

.method public final a(Lcom/alipay/android/app/base/pay/IActivityAdapter;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/android/app/base/trade/Trade;->e:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    .line 137
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alipay/android/app/base/trade/Trade;->j:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/alipay/android/app/base/trade/Trade;->i:Z

    .line 80
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alipay/android/app/base/trade/Trade;->i:Z

    return v0
.end method

.method public final b()Lcom/alipay/android/app/IRemoteCallback;
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/base/trade/Trade;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->a(I)Lcom/alipay/android/app/IRemoteCallback;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/alipay/android/app/base/pay/IActivityAdapter;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alipay/android/app/base/trade/Trade;->f:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    .line 148
    return-void
.end method

.method public final c()Lcom/alipay/android/app/IAlipayCallback;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/base/trade/Trade;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->f(I)Lcom/alipay/android/app/IAlipayCallback;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/alipay/android/app/base/trade/Trade;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/alipay/android/app/base/trade/Trade;->b:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 6

    .prologue
    .line 110
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 111
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 112
    const-string/jumbo v1, "type"

    const/16 v2, 0x1fa

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 113
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->a:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->d:Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/alipay/android/app/base/trade/Trade;->d:Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    monitor-enter v1

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->d:Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_0
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final h()Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->d:Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    return-object v0
.end method

.method public final i()Lcom/alipay/android/app/base/pay/IActivityAdapter;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->e:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;-><init>()V

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->e:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    goto :goto_0
.end method

.method public final j()Lcom/alipay/android/app/base/pay/IActivityAdapter;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->f:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->f:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->f:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/alipay/android/app/base/trade/Trade;->g:Z

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/alipay/android/app/base/trade/Trade;->h:I

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/android/app/base/trade/Trade;->j:Ljava/lang/String;

    return-object v0
.end method
