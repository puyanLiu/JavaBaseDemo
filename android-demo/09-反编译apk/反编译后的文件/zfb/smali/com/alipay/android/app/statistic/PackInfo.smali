.class public Lcom/alipay/android/app/statistic/PackInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:[B


# direct methods
.method public constructor <init>(Z[B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/alipay/android/app/statistic/PackInfo;->a:Z

    .line 10
    iput-object p2, p0, Lcom/alipay/android/app/statistic/PackInfo;->b:[B

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/alipay/android/app/statistic/PackInfo;->a:Z

    return v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/android/app/statistic/PackInfo;->b:[B

    return-object v0
.end method
