.class final Lcom/alipay/android/app/flybird/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/b;->b:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 32
    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 34
    :try_start_0
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/b;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, ""

    .line 37
    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_1
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 49
    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    const/16 v0, 0x190

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(I)V

    .line 51
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/b;->b:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->a(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 60
    :goto_1
    return-void

    .line 39
    :cond_2
    const-string/jumbo v3, "param"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-string/jumbo v0, "param"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/b;->b:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->a(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
