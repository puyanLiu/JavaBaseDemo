.class public Lcom/alipay/android/app/base/message/MessageHandleHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/base/message/MessageHandleHelper$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:Z

.field private d:Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

.field private e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/android/app/base/message/MspMessage;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/base/message/MspMessage;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/android/app/base/message/MessageHandleHelper$a;

.field private h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;)V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->a:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->b:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->c:Z

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->e:Ljava/util/Stack;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->f:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->h:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->d:Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->g:Lcom/alipay/android/app/base/message/MessageHandleHelper$a;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;-><init>(Lcom/alipay/android/app/base/message/MessageHandleHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->g:Lcom/alipay/android/app/base/message/MessageHandleHelper$a;

    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->g:Lcom/alipay/android/app/base/message/MessageHandleHelper$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "- thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->setName(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->g:Lcom/alipay/android/app/base/message/MessageHandleHelper$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->start()V

    .line 60
    iget-object v1, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->h:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 68
    :cond_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/base/message/MessageHandleHelper;II)V
    .locals 4

    .prologue
    .line 18
    const/16 v0, 0x3ee

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3f7

    if-eq p2, v0, :cond_0

    const/16 v0, 0x7d6

    if-eq p2, v0, :cond_0

    const/16 v0, 0x7d7

    if-ne p2, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/message/MspMessage;

    iget v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->e:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " handleExitMsg  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/base/message/MspMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->d:Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->e:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->f:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v2, 0x3ea

    if-ne v0, v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->f:Landroid/util/SparseArray;

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/message/MspMessage;

    .line 79
    if-eqz v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->e:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v1, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 83
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper;->e:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
