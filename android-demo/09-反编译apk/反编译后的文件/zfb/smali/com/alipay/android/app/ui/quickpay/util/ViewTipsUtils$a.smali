.class final Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22
    sput v3, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->a:I

    sput v4, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->b:I

    sput v5, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->c:I

    sput v0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->d:I

    .line 21
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->b:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->c:I

    aput v1, v0, v4

    sget v1, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->e:[I

    return-void
.end method
