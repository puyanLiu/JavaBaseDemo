.class final Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$2;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;
.source "Request.java"


# instance fields
.field final synthetic val$contentType:Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$2;->val$contentType:Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;

    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$2;->val$contentType:Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$2;->contentLength()J

    move-result-wide v3

    .line 164
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v2, 0x0

    .line 168
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$2;->val$file:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    const-wide/16 v5, 0x2000

    :try_start_1
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 170
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 171
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 174
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
