.class final synthetic Lcom/alipay/android/app/ui/quickpay/window/UIFormToast$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->values()[Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast$1;->a:[I

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Back:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
