.class public Lcom/alipay/android/app/empty/WindowTemplateProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/empty/IEmpty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/empty/WindowTemplateProvider$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/android/app/empty/WindowTemplateProvider;

.field private static b:Z


# instance fields
.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/empty/WindowTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/android/app/net/Envelope;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    .line 59
    new-instance v0, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v0}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    const-string/jumbo v1, "fetch.win.template"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    const-string/jumbo v1, "1.0.0"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    const-string/jumbo v1, "com.alipay.mobilecashier"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    .line 63
    sput-boolean v2, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b:Z

    .line 64
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/android/app/empty/WindowTemplate;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 209
    new-instance v2, Lcom/alipay/android/app/empty/b;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/empty/b;-><init>(Landroid/content/Context;)V

    .line 212
    :try_start_0
    invoke-virtual {v2}, Lcom/alipay/android/app/empty/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v3, "select template from window_template where name = ? and version = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 216
    :goto_1
    invoke-virtual {v2}, Lcom/alipay/android/app/empty/b;->close()V

    .line 218
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_3
    return-object v1

    .line 212
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/sys/DeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/android/app/encrypt/Des;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    invoke-virtual {v2}, Lcom/alipay/android/app/empty/b;->close()V

    move-object v0, v1

    .line 217
    goto :goto_2

    .line 216
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/alipay/android/app/empty/b;->close()V

    throw v0

    .line 218
    :cond_1
    new-instance v1, Lcom/alipay/android/app/empty/WindowTemplate;

    invoke-direct {v1, p2, v0}, Lcom/alipay/android/app/empty/WindowTemplate;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/WindowTemplate;

    .line 193
    invoke-static {}, Lcom/alipay/android/app/empty/MemoryMonitor;->a()Lcom/alipay/android/app/empty/MemoryMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/empty/MemoryMonitor;->b(Lcom/alipay/android/app/empty/IMemorySizeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/alipay/android/app/empty/MemoryMonitor;->a()Lcom/alipay/android/app/empty/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/empty/MemoryMonitor;->a(Lcom/alipay/android/app/empty/IMemorySizeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 43
    sput-boolean p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b:Z

    return p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)Lcom/alipay/android/app/empty/WindowTemplate;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 235
    .line 237
    invoke-static {p2}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-object v1

    .line 243
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v2

    .line 246
    iget-object v3, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    sget-object v4, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/net/Envelope;->a(Ljava/lang/String;)V

    .line 248
    new-instance v3, Lcom/alipay/android/app/net/Request;

    iget-object v4, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->e:Lcom/alipay/android/app/net/Envelope;

    sget-object v5, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    invoke-direct {v3, v4, v0, p4, v5}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/helper/ProtocolType;)V

    .line 254
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lcom/alipay/android/app/net/Request;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/net/Request;->a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4, p4}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "data"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v4, "params"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "code"

    const/16 v6, 0x1f7

    invoke-virtual {v0, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v4, :cond_3

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    sget v5, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_GET_COUNT:I

    if-ge v0, v5, :cond_3

    iget v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    const-string/jumbo v0, "public_key"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/alipay/android/app/IAppConfig;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 278
    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_1
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    if-eqz v2, :cond_8

    .line 285
    :try_start_2
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    .line 292
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/alipay/android/app/empty/WindowTemplate;

    invoke-direct {v1, p3, v0}, Lcom/alipay/android/app/empty/WindowTemplate;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c:I

    const-string/jumbo v0, "res_data"

    const-string/jumbo v3, ""

    invoke-virtual {v4, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/android/app/encrypt/TriDes;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v2, Lcom/alipay/android/app/json/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/alipay/android/app/json/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    :try_start_4
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->beginObject()V

    .line 260
    :cond_4
    :goto_4
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 261
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 263
    const-string/jumbo v4, "result"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 264
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 266
    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 267
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    .line 268
    throw v0

    .line 278
    :catch_1
    move-exception v0

    goto :goto_2

    .line 271
    :cond_5
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->skipValue()V
    :try_end_4
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 280
    :catch_2
    move-exception v0

    :goto_5
    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 283
    if-eqz v2, :cond_8

    .line 285
    :try_start_6
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v0, v1

    .line 288
    goto :goto_3

    .line 275
    :cond_6
    :try_start_7
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->endObject()V
    :try_end_7
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 283
    :try_start_8
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JsonReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 286
    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 288
    goto :goto_3

    .line 286
    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 288
    goto :goto_3

    .line 283
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_7

    .line 285
    :try_start_9
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JsonReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 288
    :cond_7
    :goto_7
    throw v0

    .line 286
    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 283
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 280
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :cond_8
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public static b()Lcom/alipay/android/app/empty/WindowTemplateProvider;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a:Lcom/alipay/android/app/empty/WindowTemplateProvider;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;

    invoke-direct {v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;-><init>()V

    sput-object v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a:Lcom/alipay/android/app/empty/WindowTemplateProvider;

    .line 71
    :cond_0
    sget-object v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a:Lcom/alipay/android/app/empty/WindowTemplateProvider;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    .prologue
    .line 323
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 327
    :try_start_0
    const-string/jumbo v0, "win_name"

    invoke-virtual {v1, v0, p0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 329
    const-string/jumbo v2, "version"

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string/jumbo v0, "os"

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-object v1

    .line 332
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcom/alipay/android/app/empty/MemoryMonitor;->a()Lcom/alipay/android/app/empty/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/empty/MemoryMonitor;->b(Lcom/alipay/android/app/empty/IMemoryEventHandler;)V

    .line 373
    new-instance v0, Lcom/alipay/android/app/empty/WindowTemplateProvider$a;

    iget-object v1, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/empty/WindowTemplateProvider$a;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 375
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 376
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/WindowTemplate;

    .line 93
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/android/app/empty/WindowTemplate;->a:I

    sub-int/2addr v1, p3

    if-nez v1, :cond_0

    .line 95
    iget-object v0, v0, Lcom/alipay/android/app/empty/WindowTemplate;->b:Ljava/lang/String;

    .line 114
    :goto_0
    return-object v0

    .line 99
    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Ljava/lang/String;)V

    .line 101
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/android/app/empty/WindowTemplate;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alipay/android/app/empty/WindowTemplate;->a:I

    sub-int/2addr v1, p3

    if-nez v1, :cond_1

    .line 104
    invoke-direct {p0, p2, v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V

    .line 105
    iget-object v0, v0, Lcom/alipay/android/app/empty/WindowTemplate;->b:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)Lcom/alipay/android/app/empty/WindowTemplate;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/alipay/android/app/empty/WindowTemplate;->a:I

    sub-int/2addr v1, p3

    if-nez v1, :cond_2

    .line 113
    invoke-direct {p0, p2, v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V

    .line 114
    iget-object v0, v0, Lcom/alipay/android/app/empty/WindowTemplate;->b:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_2
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    const-string/jumbo v1, "Cannot get window template from server"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    .line 120
    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c(Landroid/content/Context;)V

    .line 346
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 127
    invoke-static {p1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string/jumbo v0, "init_window_template"

    const-string/jumbo v4, ""

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "window_template.img"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 135
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 136
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 161
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    goto :goto_0

    .line 141
    :cond_1
    :try_start_3
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v5, "list"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 143
    if-nez v4, :cond_2

    .line 161
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 163
    :catch_2
    move-exception v0

    goto :goto_0

    .line 146
    :cond_2
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 147
    invoke-virtual {v4, v1}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    .line 148
    new-instance v6, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v6}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 149
    const-string/jumbo v7, "win"

    invoke-virtual {v6, v7, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 150
    const-string/jumbo v7, "win_version"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 152
    const-string/jumbo v8, "win_name"

    invoke-virtual {v5, v8}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    new-instance v8, Lcom/alipay/android/app/empty/WindowTemplate;

    invoke-virtual {v6}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lcom/alipay/android/app/empty/WindowTemplate;-><init>(ILjava/lang/String;)V

    .line 155
    invoke-direct {p0, v5, v8}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "init_window_template"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 161
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 164
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 160
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 161
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 163
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_4

    .line 160
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c(Landroid/content/Context;)V

    .line 366
    return-void
.end method
