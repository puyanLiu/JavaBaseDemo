.class public final Lnet/lingala/zip4j/exception/a;
.super Ljava/lang/Exception;
.source "ZipException.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/exception/a;->a:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/exception/a;->a:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/exception/a;->a:I

    .line 38
    iput p2, p0, Lnet/lingala/zip4j/exception/a;->a:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/exception/a;->a:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;B)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/exception/a;->a:I

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lnet/lingala/zip4j/exception/a;->a:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/exception/a;->a:I

    .line 48
    return-void
.end method
