.class final Lcom/uc/webview/export/utility/d;
.super Ljava/lang/ThreadLocal;
.source "ProGuard"


# instance fields
.field a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/utility/d;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method private declared-synchronized a()Ljava/util/Formatter;
    .locals 3

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/uc/webview/export/utility/d;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/uc/webview/export/utility/d;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0
.end method

.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/uc/webview/export/utility/d;->a()Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method
