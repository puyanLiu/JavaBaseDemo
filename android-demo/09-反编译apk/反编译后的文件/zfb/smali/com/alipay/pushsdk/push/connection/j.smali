.class final Lcom/alipay/pushsdk/push/connection/j;
.super Ljava/util/TimerTask;
.source "PushConnection.java"


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/connection/i;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/connection/i;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/j;->a:Lcom/alipay/pushsdk/push/connection/i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x2

    .line 548
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/i;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reConnTask() curMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/j;->a:Lcom/alipay/pushsdk/push/connection/i;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/connection/i;->a(Lcom/alipay/pushsdk/push/connection/i;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/j;->a:Lcom/alipay/pushsdk/push/connection/i;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/i;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 572
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/i;->l()Ljava/lang/String;

    move-result-object v0

    .line 574
    const-string/jumbo v1, "reConnTask() connectionClosedOnError has been notify!"

    .line 573
    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_2
    return-void

    .line 553
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/b/c;

    .line 557
    :try_start_0
    const-string/jumbo v2, "The reps of heart timeout."

    .line 558
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "timeout : heart"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 559
    new-instance v4, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v4, v2, v3}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    const-string/jumbo v2, "51"

    invoke-virtual {v4, v2}, Lcom/alipay/pushsdk/push/connection/PushException;->setType(Ljava/lang/String;)V

    .line 562
    invoke-interface {v0, v4}, Lcom/alipay/pushsdk/push/b/c;->a(Lcom/alipay/pushsdk/push/connection/PushException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 567
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/i;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
