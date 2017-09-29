.class public Lcom/alipay/android/app/request/MspFrameFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/lib/plusin/protocol/IFrameFactory",
        "<",
        "Lcom/alipay/android/app/data/WindowFrameData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const/4 p0, 0x0

    .line 129
    :cond_0
    return-object p0

    .line 118
    :cond_1
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 123
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\""

    const-string/jumbo v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "^@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "@^"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static c(Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/app/data/WindowFrameData;
    .locals 9

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->h()Lcom/alipay/android/app/net/Request;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v2

    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->k()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 55
    const-string/jumbo v3, "reflected_data"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "session = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "session"

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 59
    invoke-virtual {p0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/net/Response;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 62
    :cond_0
    const-string/jumbo v3, "end_code"

    const-string/jumbo v4, "0"

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Response;->b(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v3, "user_id"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Response;->e(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Response;->c(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v3, "memo"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Response;->d(Ljava/lang/String;)V

    .line 67
    const/4 v3, 0x0

    .line 68
    const-string/jumbo v4, "win"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v6

    .line 69
    if-eqz v6, :cond_2

    .line 70
    const-string/jumbo v0, "data"

    invoke-virtual {v6, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    .line 71
    const-string/jumbo v0, "win_name"

    invoke-virtual {v6, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    const-string/jumbo v0, "win_version"

    const/4 v4, 0x0

    invoke-virtual {v6, v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 73
    const-string/jumbo v0, "dynamic_script"

    invoke-virtual {v6, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v6

    .line 75
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Request;->b()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v8

    invoke-virtual {v7, v0, v3, v4, v8}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 81
    invoke-static {v0, v5}, Lcom/alipay/android/app/request/MspFrameFactory;->a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v7, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v7, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/alipay/android/app/data/WindowFrameData;

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/data/WindowFrameData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;Ljava/lang/String;ILcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONArray;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    move-object v0, v7

    .line 98
    :goto_0
    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/WindowFrameData;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 102
    :cond_1
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 88
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    .line 89
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    .line 90
    throw v0

    .line 91
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 93
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    .line 94
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    .line 95
    throw v0

    :cond_2
    move-object v1, v3

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/helper/ProtocolType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->k()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "dismiss_time"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->b(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public final synthetic b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/lib/plusin/ui/WindowData;
    .locals 1

    .prologue
    .line 31
    invoke-static {p1}, Lcom/alipay/android/app/request/MspFrameFactory;->c(Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/app/data/WindowFrameData;

    move-result-object v0

    return-object v0
.end method
