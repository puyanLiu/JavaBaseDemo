.class Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;
.super Ljava/lang/Object;
.source "AnomalousRestartProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$0(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    :cond_0
    :goto_1
    return-void

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$1(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "framework_preferences"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 96
    const-string/jumbo v3, "processStartTimesMain"

    const-string/jumbo v4, ""

    invoke-interface {v6, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-static {v4, v3, v0, v1}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$2(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "processStartTimesMain"

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-static {v4, v1, v5}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$3(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_0

    .line 105
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v3, v0

    const-wide/32 v3, 0xea60

    div-long/2addr v0, v3

    .line 107
    cmp-long v3, v8, v0

    if-gtz v3, :cond_3

    const-wide/16 v3, 0x3c

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$4(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const-string/jumbo v0, "ClientAnomalousRestart"

    const-string/jumbo v1, "MainProcess Restart 5 Times In 60 Minutes."

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 114
    :cond_2
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "processStartTimesMain"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 115
    :cond_3
    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    .line 117
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "processStartTimesMain"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
