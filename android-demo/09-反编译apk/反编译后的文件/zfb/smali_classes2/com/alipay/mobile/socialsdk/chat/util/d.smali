.class final Lcom/alipay/mobile/socialsdk/chat/util/d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

.field private f:J


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 866
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->b:Ljava/lang/String;

    .line 868
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->c:[J

    .line 869
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/util/d;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method private static a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .prologue
    .line 895
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/util/d;J)V
    .locals 0

    .prologue
    .line 864
    iput-wide p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->f:J

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/util/d;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->e:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/util/d;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 880
    array-length v0, p1

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/util/d;)Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->e:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/chat/util/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/chat/util/d;)V
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->d:Z

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/socialsdk/chat/util/d;)[J
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->c:[J

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/socialsdk/chat/util/d;)J
    .locals 2

    .prologue
    .line 864
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 899
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->h(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->c:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 876
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 873
    :cond_0
    aget-wide v4, v2, v0

    .line 874
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 903
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->h(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/d;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
