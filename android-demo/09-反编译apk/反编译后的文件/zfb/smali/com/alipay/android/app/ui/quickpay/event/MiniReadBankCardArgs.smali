.class public abstract Lcom/alipay/android/app/ui/quickpay/event/MiniReadBankCardArgs;
.super Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ReadBankCard:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 14
    return-void
.end method


# virtual methods
.method public abstract onReadSuccess(Ljava/lang/String;)V
.end method
