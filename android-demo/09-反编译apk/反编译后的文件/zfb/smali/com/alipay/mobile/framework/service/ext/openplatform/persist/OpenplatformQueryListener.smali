.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;
.super Ljava/lang/Object;
.source "OpenplatformQueryListener.java"


# static fields
.field private static securityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private db:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field public mAppQueryListener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000712"

    const-string/jumbo v2, "20000067"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000713"

    const-string/jumbo v2, "20000111"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000714"

    const-string/jumbo v2, "20000067"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000715"

    const-string/jumbo v2, "20000067"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000716"

    const-string/jumbo v2, "20000111"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000717"

    const-string/jumbo v2, "20000111"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000718"

    const-string/jumbo v2, "20000055"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000719"

    const-string/jumbo v2, "20000067"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000720"

    const-string/jumbo v2, "20000055"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000248"

    const-string/jumbo v2, "20000166"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000727"

    const-string/jumbo v2, "10000007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000728"

    const-string/jumbo v2, "20000056"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    const-string/jumbo v1, "20000729"

    const-string/jumbo v2, "20000689"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, "search_app"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->mAppQueryListener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->db:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->checkOnLineStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->checkCanSearch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3()Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->addSchemaPramas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addSchemaPramas(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 237
    const-string/jumbo v3, ""

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-object v3

    .line 241
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    const/4 v1, 0x0

    .line 244
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    if-eqz v2, :cond_0

    .line 249
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    const-string/jumbo v0, "searchExtra"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string/jumbo v0, "searchExtra"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v0, "searchExtra"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 258
    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 259
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v3

    .line 260
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v3, v1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v1

    goto :goto_1

    .line 255
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    .line 259
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3
.end method

.method private checkCanSearch(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 227
    :goto_0
    return v0

    .line 213
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    const/4 v2, 0x0

    .line 216
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_1
    if-eqz v0, :cond_1

    .line 221
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 222
    const-string/jumbo v2, "canSearch"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const-string/jumbo v2, "canSearch"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 227
    goto :goto_0
.end method

.method private checkOnLineStatus(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    const-string/jumbo v1, "offline"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    const-string/jumbo v1, "autoUn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    const-string/jumbo v1, "un"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeQueryParams(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 275
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v2, v0

    .line 276
    return-object v2

    .line 273
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 272
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public registerQueryListeners(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;)V
    .locals 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->db:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->mAppQueryListener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    .line 66
    const-string/jumbo v1, "app"

    .line 65
    invoke-virtual {p2, v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->registerQueryListener(Lcom/alipay/android/phone/globalsearch/api/QueryListener;Ljava/lang/String;)V

    .line 67
    return-void
.end method
