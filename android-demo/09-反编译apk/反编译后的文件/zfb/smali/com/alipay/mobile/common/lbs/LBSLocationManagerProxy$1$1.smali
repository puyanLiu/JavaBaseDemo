.class Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1$1;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1$1;->this$1:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1$1;->this$1:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;

    iget-object v0, v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$300(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)V

    .line 166
    return-void
.end method
