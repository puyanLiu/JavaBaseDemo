.class public final Lcom/alipay/mobile/clientsecurity/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/clientsecurity/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/clientsecurity/R$styleable;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/clientsecurity/R$styleable;->b:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x30010002

    aput v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/clientsecurity/R$styleable;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x30010000
        0x30010001
    .end array-data

    :array_1
    .array-data 4
        0x30010000
        0x30010001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
