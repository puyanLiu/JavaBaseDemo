.class public final enum Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;
.super Ljava/lang/Enum;
.source "LoggerLevelEnum.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

.field public static final enum DEBUG:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

.field public static final enum ERROR:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

.field public static final enum FATAL:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

.field public static final enum INFO:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

.field public static final enum WARN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->DEBUG:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    .line 10
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->INFO:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    .line 11
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    const-string/jumbo v1, "WARN"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->WARN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    .line 12
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->ERROR:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    .line 13
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    const-string/jumbo v1, "FATAL"

    invoke-direct {v0, v1, v6, v6}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->FATAL:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->DEBUG:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->INFO:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->WARN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->ERROR:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->FATAL:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->$VALUES:[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->value:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->$VALUES:[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->value:I

    return v0
.end method
