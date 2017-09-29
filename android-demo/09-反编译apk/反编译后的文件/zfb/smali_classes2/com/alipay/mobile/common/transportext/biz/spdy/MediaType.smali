.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final charset:Ljava/lang/String;

.field private final mediaType:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    .line 33
    const-string/jumbo v0, ";\\s*([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\")"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->mediaType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->type:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->subtype:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->charset:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    .line 53
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v1

    .line 55
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 59
    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 62
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    if-eqz v2, :cond_3

    const-string/jumbo v6, "charset"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Multiple charsets: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_1

    .line 67
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 72
    :cond_5
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;

    invoke-direct {v1, p0, v3, v4, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 116
    instance-of v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->mediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->mediaType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final subtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method
