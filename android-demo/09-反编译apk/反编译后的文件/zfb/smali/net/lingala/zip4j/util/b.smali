.class public final Lnet/lingala/zip4j/util/b;
.super Ljava/lang/Object;
.source "Raw.java"


# direct methods
.method public static a(Ljava/io/DataInput;[B)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_0
    invoke-interface {p0, p1, v0, v1}, Ljava/io/DataInput;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([BI)I
    .locals 2

    .prologue
    .line 57
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static a([B)J
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 27
    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 29
    shl-long/2addr v0, v4

    .line 30
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 31
    shl-long/2addr v0, v4

    .line 32
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 33
    shl-long/2addr v0, v4

    .line 34
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 35
    shl-long/2addr v0, v4

    .line 36
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 37
    shl-long/2addr v0, v4

    .line 38
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 39
    shl-long/2addr v0, v4

    .line 40
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 41
    shl-long/2addr v0, v4

    .line 42
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 43
    return-wide v0
.end method

.method public static a([C)[B
    .locals 3

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 178
    :cond_0
    array-length v0, p0

    new-array v1, v0, [B

    .line 179
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 180
    aget-char v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    return-object v1
.end method

.method public static b([B)I
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method
