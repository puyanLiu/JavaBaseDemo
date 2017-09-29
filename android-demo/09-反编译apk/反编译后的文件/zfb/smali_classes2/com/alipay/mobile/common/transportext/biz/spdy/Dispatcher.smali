.class final Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private final enqueuedJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/Job;",
            ">;>;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-nez v0, :cond_1

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;

    .line 51
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized enqueue(Ljava/net/HttpURLConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/Request;Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;)V
    .locals 4

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;Ljava/net/HttpURLConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/Request;Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 39
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized finished(Lcom/alipay/mobile/common/transportext/biz/spdy/Job;)V
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->tag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 57
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
