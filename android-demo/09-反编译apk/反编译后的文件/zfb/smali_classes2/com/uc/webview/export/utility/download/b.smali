.class final Lcom/uc/webview/export/utility/download/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/uc/webview/export/utility/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/DownloadTask;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/b;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    iput-object p2, p0, Lcom/uc/webview/export/utility/download/b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/b;->b:Lcom/uc/webview/export/utility/download/DownloadTask;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/b;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 218
    monitor-exit v1

    .line 220
    :goto_0
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method
