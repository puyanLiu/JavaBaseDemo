.class public Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;
.super Ljava/lang/Object;
.source "ClientIdHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmssSSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0xf

    .line 31
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "clientID"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    const-string/jumbo v2, ""

    .line 33
    const-string/jumbo v1, ""

    .line 36
    :try_start_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 37
    if-nez v0, :cond_8

    .line 38
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 39
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v2

    .line 43
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 48
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 50
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 52
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 54
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 59
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_1

    .line 63
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 69
    :goto_3
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v1

    const-string/jumbo v2, "clientID"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v2, "[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}"

    invoke-virtual {v5, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 73
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a()Ljava/lang/String;

    move-result-object v1

    .line 75
    :cond_4
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_5
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v1

    const-string/jumbo v2, "clientID"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object v1, v3

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_2

    :cond_8
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    const-string/jumbo v2, "[0]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a()Ljava/lang/String;

    move-result-object p0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "123456789012345"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v1, 0x0

    .line 154
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-object p0

    .line 156
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    .line 157
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_6

    .line 158
    aget-byte v2, v3, v0

    if-lt v2, v5, :cond_1

    const/16 v4, 0x39

    if-le v2, v4, :cond_3

    :cond_1
    const/16 v4, 0x61

    if-lt v2, v4, :cond_2

    const/16 v4, 0x7a

    if-le v2, v4, :cond_3

    :cond_2
    const/16 v4, 0x41

    if-lt v2, v4, :cond_5

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_4

    .line 159
    aput-byte v5, v3, v0

    .line 157
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    .line 158
    goto :goto_2

    .line 161
    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
