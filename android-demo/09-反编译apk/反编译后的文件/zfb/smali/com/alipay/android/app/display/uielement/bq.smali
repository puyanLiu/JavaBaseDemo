.class final Lcom/alipay/android/app/display/uielement/bq;
.super Lcom/alipay/android/app/display/event/MspEventArgs;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/bp;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/bp;Lcom/alipay/android/app/display/event/EventType;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bq;->a:Lcom/alipay/android/app/display/uielement/bp;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    return-void
.end method


# virtual methods
.method public final getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bq;->a:Lcom/alipay/android/app/display/uielement/bp;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/bp;->a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEventScript(Lcom/alipay/android/lib/plusin/script/EventScriptType;)Lcom/alipay/android/app/event/IEventArgs$EventScript;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/alipay/android/app/event/IEventArgs$EventScript;

    sget-object v1, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Sentence:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/bq;->a:Lcom/alipay/android/app/display/uielement/bp;

    iget-object v2, v2, Lcom/alipay/android/app/display/uielement/bp;->a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/bq;->getEventType()Lcom/alipay/android/app/display/event/EventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/display/event/EventType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/event/IEventArgs$EventScript;-><init>(Lcom/alipay/android/lib/plusin/script/EventScriptOperation;Ljava/lang/String;)V

    return-object v0
.end method
