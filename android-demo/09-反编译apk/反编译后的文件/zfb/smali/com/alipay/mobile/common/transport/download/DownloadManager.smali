.class public Lcom/alipay/mobile/common/transport/download/DownloadManager;
.super Lcom/alipay/mobile/common/transport/http/HttpManager;
.source "DownloadManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 36
    return-void
.end method


# virtual methods
.method public addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/download/DownloadRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "downloadRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "downloadRequest# is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setHeaders(Ljava/util/ArrayList;)V

    .line 82
    :cond_2
    const-string/jumbo v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addDownload url=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/alipay/mobile/common/transport/TransportCallback;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    const-string/jumbo v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addDownload url=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-nez p3, :cond_0

    .line 51
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 54
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public generateWorker(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    return-object v0
.end method
