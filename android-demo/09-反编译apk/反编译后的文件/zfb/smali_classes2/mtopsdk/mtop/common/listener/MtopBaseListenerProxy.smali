.class public Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
.super Lmtopsdk/mtop/common/DefaultMtopCallback;
.source "MtopBaseListenerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopListenerProxy"


# instance fields
.field public context:Ljava/lang/Object;

.field protected isCached:Z

.field protected listener:Lmtopsdk/mtop/common/MtopListener;

.field public response:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    .line 18
    iput-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 19
    iput-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 20
    iput-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->context:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->isCached:Z

    .line 26
    iput-object p1, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 27
    return-void
.end method


# virtual methods
.method public onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v0, v0, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    invoke-interface {v0, p1, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;->onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 34
    iput-object p2, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->context:Ljava/lang/Object;

    .line 36
    :cond_0
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v0, v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v0, :cond_1

    .line 46
    iget-boolean v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->isCached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    :cond_1
    :goto_1
    return-void

    .line 40
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "mtopsdk.MtopListenerProxy"

    const-string/jumbo v1, "[onFinished] notify error"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 49
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    invoke-interface {v0, p1, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v0, v0, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    invoke-interface {v0, p1, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;->onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-void
.end method
