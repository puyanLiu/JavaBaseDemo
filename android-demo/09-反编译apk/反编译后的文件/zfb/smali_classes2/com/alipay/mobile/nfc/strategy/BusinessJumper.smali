.class public Lcom/alipay/mobile/nfc/strategy/BusinessJumper;
.super Ljava/lang/Object;
.source "BusinessJumper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static e:Lcom/alipay/mobile/nfc/strategy/BusinessJumper;


# instance fields
.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "NFC/BusinessJumper"

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->d:Z

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 22
    return-void
.end method

.method public static a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/nfc/strategy/BusinessJumper;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->e:Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    sput-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->e:Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    .line 28
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->e:Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->c:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-interface {v0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;->a()V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u672a\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->c:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-interface {v0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->c:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->d:Z

    .line 34
    return-void
.end method
