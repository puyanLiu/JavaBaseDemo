.class public final enum Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

.field public static final enum NONE:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

.field public static final enum URL:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    const-string/jumbo v1, "URL"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->URL:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    new-instance v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->NONE:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    sget-object v1, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->URL:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->NONE:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->ENUM$VALUES:[Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->ENUM$VALUES:[Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
