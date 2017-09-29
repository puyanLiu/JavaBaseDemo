.class public Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;


# instance fields
.field private b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

.field private c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "biz_type=\"fingerprint\""

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->d:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->e:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public static a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a:Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;-><init>()V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a:Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    .line 45
    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a:Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 194
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->isLoadProperties:Z

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "msp"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->k(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 198
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/alipay/android/app/pay/GlobalConstant;->loadProperties(Landroid/content/Context;Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private varargs b(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(I)V

    .line 97
    packed-switch p2, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->init(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->init(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(I)V

    .line 155
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->createRequestJson(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs a(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(I)V

    .line 124
    invoke-static {p1}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;)V

    .line 125
    array-length v1, p3

    new-array v2, v1, [Ljava/lang/Object;

    .line 129
    array-length v3, p3

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p3, v0

    .line 130
    aput-object v4, v2, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 145
    :cond_1
    :goto_1
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->setObject(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    invoke-interface {v0, p1, p2, v2}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->execute(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    invoke-interface {v0, p1, p2, v2}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->execute(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-static {p1}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;)V

    .line 60
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    const-string/jumbo v1, "fp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 62
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 63
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v4

    invoke-direct {p0, p1, v3, v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 66
    :cond_0
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    const-string/jumbo v1, "wear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 67
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 68
    const/4 v0, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 75
    :cond_1
    const-string/jumbo v0, "external_info"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 79
    const-string/jumbo v0, "secData"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getPayAuthData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 91
    :goto_0
    iput-object v5, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    .line 92
    iput-object v5, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    .line 93
    return-void

    .line 84
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 86
    const-string/jumbo v0, "secData"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v4, v2}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getRegAuthData(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->e:Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    .line 207
    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    .line 208
    return-void
.end method
