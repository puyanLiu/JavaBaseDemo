.class public Lmtopsdk/common/util/SdkSetting;
.super Ljava/lang/Object;
.source "SdkSetting.java"


# static fields
.field private static env:Lmtopsdk/common/util/SdkSetting$ENV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->release:Lmtopsdk/common/util/SdkSetting$ENV;

    sput-object v0, Lmtopsdk/common/util/SdkSetting;->env:Lmtopsdk/common/util/SdkSetting$ENV;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static getEnv()Lmtopsdk/common/util/SdkSetting$ENV;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lmtopsdk/common/util/SdkSetting;->env:Lmtopsdk/common/util/SdkSetting$ENV;

    return-object v0
.end method

.method public static setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V
    .locals 0

    .prologue
    .line 14
    if-eqz p0, :cond_0

    .line 15
    sput-object p0, Lmtopsdk/common/util/SdkSetting;->env:Lmtopsdk/common/util/SdkSetting$ENV;

    .line 17
    :cond_0
    return-void
.end method
