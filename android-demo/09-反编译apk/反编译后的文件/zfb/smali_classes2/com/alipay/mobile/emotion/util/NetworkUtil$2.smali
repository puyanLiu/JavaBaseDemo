.class synthetic Lcom/alipay/mobile/emotion/util/NetworkUtil$2;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field static final synthetic $SwitchMap$com$alipay$mobile$emotion$util$NetworkUtil$Network:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->values()[Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$2;->$SwitchMap$com$alipay$mobile$emotion$util$NetworkUtil$Network:[I

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$2;->$SwitchMap$com$alipay$mobile$emotion$util$NetworkUtil$Network:[I

    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$2;->$SwitchMap$com$alipay$mobile$emotion$util$NetworkUtil$Network:[I

    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$2;->$SwitchMap$com$alipay$mobile$emotion$util$NetworkUtil$Network:[I

    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$2;->$SwitchMap$com$alipay$mobile$emotion$util$NetworkUtil$Network:[I

    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
