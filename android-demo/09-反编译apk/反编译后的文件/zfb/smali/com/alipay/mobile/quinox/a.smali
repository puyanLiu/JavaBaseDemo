.class public final Lcom/alipay/mobile/quinox/a;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/quinox/a;


# instance fields
.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "ExceptionHandler"

    sput-object v0, Lcom/alipay/mobile/quinox/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/quinox/a;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/alipay/mobile/quinox/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/a;->b:Lcom/alipay/mobile/quinox/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/quinox/a;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/a;->b:Lcom/alipay/mobile/quinox/a;

    .line 27
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/a;->b:Lcom/alipay/mobile/quinox/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/quinox/a;

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "ExceptionHandler(Quinox).setUp()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/a;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 42
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/mobile/quinox/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "ExceptionHandler(Quinox).stop()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 48
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LauncherApplication.Init"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handleCrashOnStartup()V

    .line 80
    sget-object v0, Lcom/alipay/mobile/quinox/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "QuinoxExceptionHandler: This is the exception that cause Crash."

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 82
    instance-of v0, p2, Ljava/lang/IllegalAccessError;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Class ref in pre-verified class resolved to unexpected implementation"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    instance-of v0, p2, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.taobao.infsword.service.AppInstallReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v1, Ljava/lang/Throwable;

    const-string/jumbo v2, "NegligibleThrowable"

    invoke-direct {v1, v2, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, p1, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 89
    :cond_3
    :goto_1
    return-void

    .line 82
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/quinox/a;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
