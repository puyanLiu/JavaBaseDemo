.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;
.super Ljava/lang/Object;
.source "Http20Draft06.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;


# instance fields
.field private final client:Z

.field private final hpackBuffer:Ljava/io/ByteArrayOutputStream;

.field private final hpackWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;

.field private final out:Ljava/io/DataOutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    .line 296
    iput-boolean p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->client:Z

    .line 297
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->hpackBuffer:Ljava/io/ByteArrayOutputStream;

    .line 298
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->hpackBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->hpackWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;

    .line 299
    return-void
.end method

.method private headers(ZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/4 v4, -0x1

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->hpackBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->hpackWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->hpackBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 341
    const/4 v0, 0x4

    .line 342
    if-eqz p1, :cond_0

    .line 343
    const/4 v0, 0x5

    .line 344
    :cond_0
    if-eq p3, v4, :cond_1

    .line 345
    or-int/lit8 v0, v0, 0x8

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    const v3, 0xffff

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/lit16 v1, v1, 0x100

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    and-int v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 348
    if-eq p3, v4, :cond_2

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    and-int v1, p3, v5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->hpackBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 351
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 415
    return-void
.end method

.method public final declared-synchronized connectionHeader()V
    .locals 2

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->client:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 311
    :goto_0
    monitor-exit p0

    return-void

    .line 310
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final data(ZI[B)V
    .locals 6

    .prologue
    .line 360
    const/4 v4, 0x0

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->data(ZI[BII)V

    .line 361
    return-void
.end method

.method public final declared-synchronized data(ZI[BII)V
    .locals 3

    .prologue
    .line 366
    monitor-enter p0

    const/4 v0, 0x0

    .line 368
    if-eqz p1, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 370
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    const v2, 0xffff

    and-int/2addr v2, p5

    shl-int/lit8 v2, v2, 0x10

    or-int/lit8 v2, v2, 0x0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3, p4, p5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized goAway(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 0

    .prologue
    .line 405
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->headers(ZIILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized noop()V
    .locals 1

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ping(ZII)V
    .locals 0

    .prologue
    .line 399
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized rstStream(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 2

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized settings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 377
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    .line 379
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    const v3, 0xffff

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/lit16 v1, v1, 0x400

    or-int/lit8 v1, v1, 0x0

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 382
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 383
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 384
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    const v2, 0xffffff

    and-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 387
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized synReply(ZILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->headers(ZIILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized synStream(ZZIIIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 318
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 319
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p3, p5, p7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;->headers(ZIILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    monitor-exit p0

    return-void
.end method

.method public final tcpData([B)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public final declared-synchronized windowUpdate(II)V
    .locals 0

    .prologue
    .line 410
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
