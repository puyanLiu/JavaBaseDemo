.class public Lcom/alipay/android/app/util/ResUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/android/app/util/ResUtils;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/android/app/util/ResUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 139
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 146
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 149
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "id"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lcom/alipay/android/app/util/ResUtils;->b:Landroid/content/Context;

    .line 108
    if-nez v0, :cond_2

    .line 109
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    .line 112
    :goto_0
    sget-boolean v0, Lcom/alipay/android/app/util/ResUtils;->a:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 116
    :try_start_0
    invoke-static {v1, p0, p1}, Lcom/alipay/android/app/util/ResUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    if-lez v0, :cond_0

    .line 128
    :goto_1
    return v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".R$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 128
    :cond_1
    invoke-static {v1, p0, p1}, Lcom/alipay/android/app/util/ResUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-boolean v1, Lcom/alipay/android/app/util/ResUtils;->a:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "com.taobao.taobao"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.taobao.caipiao"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.taobao.apad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    :cond_0
    const-string/jumbo v0, "com.alipay.android.app"

    .line 174
    :cond_1
    :goto_0
    return-object v0

    .line 162
    :cond_2
    sget-boolean v1, Lcom/alipay/android/app/pay/GlobalConstant;->MINI_DEMO_ENV:Z

    if-nez v1, :cond_1

    .line 163
    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "com.eg.android.AlipayGphoneRC"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "com.taobao.trip"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "com.taobao.trip.rc"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    :cond_3
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_PACKAGENAME:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_4
    const-string/jumbo v1, "com.alipay.m.portal"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const-string/jumbo v0, "com.alipay.android.app.pay"

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 88
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/alipay/android/app/util/ResUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".R$styleable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 92
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 94
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    return-object v0

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    .line 103
    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "anim"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "color"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "dimen"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "drawable"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "layout"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "string"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "style"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "styleable"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static j(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "xml"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static k(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "raw"

    invoke-static {p0, v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static l(Ljava/lang/String;)[I
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alipay/android/app/util/ResUtils;->a(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method
