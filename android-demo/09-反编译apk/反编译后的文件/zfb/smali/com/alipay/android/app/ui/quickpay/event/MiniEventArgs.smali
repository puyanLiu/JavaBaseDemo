.class public Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    .line 18
    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    const-string/jumbo v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_2
    const-string/jumbo v1, "host"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_3
    const-string/jumbo v1, "params"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_4
    const-string/jumbo v1, "enctype"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_5
    const-string/jumbo v1, "request_param"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_6
    const-string/jumbo v1, "validate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_7
    const-string/jumbo v1, "https"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_8
    const-string/jumbo v1, "formSubmit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 57
    :cond_9
    const-string/jumbo v1, "namespace"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 61
    :cond_a
    const-string/jumbo v1, "apiVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->d()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    :cond_b
    const-string/jumbo v1, "apiName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    return-object v0
.end method
