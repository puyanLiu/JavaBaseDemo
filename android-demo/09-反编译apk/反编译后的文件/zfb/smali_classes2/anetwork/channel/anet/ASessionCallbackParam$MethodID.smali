.class public final enum Lanetwork/channel/anet/ASessionCallbackParam$MethodID;
.super Ljava/lang/Enum;
.source "ASessionCallbackParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanetwork/channel/anet/ASessionCallbackParam$MethodID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

.field public static final enum SPDYPINGRECVCALLBACK:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

.field public static final enum SPDYSESSIONCONNECTCB:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

.field public static final enum SPDYSESSIONFAILEDERROR:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    const-string/jumbo v1, "SPDYPINGRECVCALLBACK"

    invoke-direct {v0, v1, v2}, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYPINGRECVCALLBACK:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    new-instance v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    const-string/jumbo v1, "SPDYSESSIONCONNECTCB"

    invoke-direct {v0, v1, v3}, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYSESSIONCONNECTCB:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    new-instance v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    const-string/jumbo v1, "SPDYSESSIONFAILEDERROR"

    invoke-direct {v0, v1, v4}, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYSESSIONFAILEDERROR:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    sget-object v1, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYPINGRECVCALLBACK:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    aput-object v1, v0, v2

    sget-object v1, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYSESSIONCONNECTCB:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    aput-object v1, v0, v3

    sget-object v1, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYSESSIONFAILEDERROR:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    aput-object v1, v0, v4

    sput-object v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->$VALUES:[Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanetwork/channel/anet/ASessionCallbackParam$MethodID;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    return-object v0
.end method

.method public static values()[Lanetwork/channel/anet/ASessionCallbackParam$MethodID;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->$VALUES:[Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    invoke-virtual {v0}, [Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    return-object v0
.end method
