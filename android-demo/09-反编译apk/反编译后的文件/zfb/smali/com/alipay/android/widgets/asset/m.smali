.class final Lcom/alipay/android/widgets/asset/m;
.super Ljava/lang/Object;
.source "InsuranceDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/m;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 101
    if-nez p2, :cond_0

    .line 102
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->d()V

    .line 104
    :cond_0
    return-void
.end method
