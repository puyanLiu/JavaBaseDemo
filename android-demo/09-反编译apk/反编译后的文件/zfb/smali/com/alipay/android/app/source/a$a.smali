.class final Lcom/alipay/android/app/source/a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/source/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/source/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/source/a;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v0}, Lcom/alipay/android/app/source/a;->a(Lcom/alipay/android/app/source/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v0}, Lcom/alipay/android/app/source/a;->b(Lcom/alipay/android/app/source/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v0}, Lcom/alipay/android/app/source/a;->b(Lcom/alipay/android/app/source/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v0}, Lcom/alipay/android/app/source/a;->a(Lcom/alipay/android/app/source/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 130
    const/4 v1, -0x1

    .line 132
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v2}, Lcom/alipay/android/app/source/a;->c(Lcom/alipay/android/app/source/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v2}, Lcom/alipay/android/app/source/a;->d(Lcom/alipay/android/app/source/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :try_start_3
    iget-object v3, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v3}, Lcom/alipay/android/app/source/a;->e(Lcom/alipay/android/app/source/a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 135
    iget-object v0, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v0}, Lcom/alipay/android/app/source/a;->e(Lcom/alipay/android/app/source/a;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/message/MspMessage;

    .line 136
    iget-object v3, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v3}, Lcom/alipay/android/app/source/a;->f(Lcom/alipay/android/app/source/a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 138
    iget-object v3, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    iget v4, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iget v5, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {v3, v4, v5}, Lcom/alipay/android/app/source/a;->a(Lcom/alipay/android/app/source/a;II)V

    .line 140
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 141
    :try_start_4
    iget-object v2, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v2}, Lcom/alipay/android/app/source/a;->g(Lcom/alipay/android/app/source/a;)Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v2}, Lcom/alipay/android/app/source/a;->g(Lcom/alipay/android/app/source/a;)Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;->a(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v2}, Lcom/alipay/android/app/source/a;->d(Lcom/alipay/android/app/source/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 145
    :try_start_5
    iget-object v3, p0, Lcom/alipay/android/app/source/a$a;->a:Lcom/alipay/android/app/source/a;

    invoke-static {v3}, Lcom/alipay/android/app/source/a;->f(Lcom/alipay/android/app/source/a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 150
    invoke-static {v1, v0}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    goto/16 :goto_0

    .line 124
    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 127
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 140
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2

    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 156
    :cond_3
    return-void
.end method
