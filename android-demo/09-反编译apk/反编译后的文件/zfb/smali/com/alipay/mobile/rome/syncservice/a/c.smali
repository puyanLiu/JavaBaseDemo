.class public Lcom/alipay/mobile/rome/syncservice/a/c;
.super Ljava/lang/Object;
.source "LongLinkServerSetting.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/rome/syncservice/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alipay/mobile/rome/syncservice/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/a/c;->a:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static a()Lcom/alipay/mobile/rome/syncservice/a/c;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/c;->b:Lcom/alipay/mobile/rome/syncservice/a/c;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/alipay/mobile/rome/syncservice/a/c;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/c;->b:Lcom/alipay/mobile/rome/syncservice/a/c;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/a/c;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/a/c;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/a/c;->b:Lcom/alipay/mobile/rome/syncservice/a/c;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/c;->b:Lcom/alipay/mobile/rome/syncservice/a/c;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/c;->a:Ljava/lang/String;

    const-string/jumbo v1, "getLongLinkHost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/EnvConfigHelper;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "content://com.alipay.setting/PushServerUrl"

    .line 49
    const-string/jumbo v1, "mobilepmgw.alipay.com"

    .line 48
    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "mobilepmgw.alipay.com"

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_0
    return-object p2
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/EnvConfigHelper;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v0, "content://com.alipay.setting/PushPort"

    const-string/jumbo v1, "443"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 67
    :cond_0
    const-string/jumbo v0, "443"

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/EnvConfigHelper;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string/jumbo v1, "content://com.alipay.setting/PushUseSsl"

    const-string/jumbo v2, "1"

    invoke-static {p0, v1, v2}, Lcom/alipay/mobile/rome/syncservice/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 84
    :cond_0
    return v0
.end method
