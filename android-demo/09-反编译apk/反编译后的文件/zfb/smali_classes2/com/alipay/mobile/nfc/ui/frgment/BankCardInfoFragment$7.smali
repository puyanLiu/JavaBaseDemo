.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$7;
.super Ljava/lang/Object;
.source "BankCardInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$7;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$7;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    .line 351
    return-void
.end method
