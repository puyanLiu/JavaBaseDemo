.class public Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;
.super Lcom/alipay/mobile/base/config/ConfigService;
.source "ConfigServiceImpl.java"


# static fields
.field private static final RESERVE_CONFIG_KEY_RESPONSE_TIME:Ljava/lang/String; = "reserveConfigKeyResponseTime"

.field private static final RESERVE_CONFIG_KEY_USERID:Ljava/lang/String; = "reserveConfigKeyUserId"

.field private static final SP_CONFIG_NAME:Ljava/lang/String; = "CommonConfig"

.field private static final TAG:Ljava/lang/String;

.field public static lastLoadTime:J


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 31
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->lastLoadTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/ConfigService;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized loadConfig()V
    .locals 7

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    sget-wide v2, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->lastLoadTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 52
    sput-wide v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->lastLoadTime:J

    .line 53
    new-instance v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;J)V

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadConfigImmediately(J)V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;J)V

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "CommonConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public refreshAfterLogin(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "reserveConfigKeyUserId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "reserveConfigKeyResponseTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    const-string/jumbo v1, "reserveConfigKeyUserId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    new-instance v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;J)V

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->start()V

    .line 73
    :cond_0
    return-void
.end method
