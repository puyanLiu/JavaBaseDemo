.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;
.super Ljava/lang/Object;
.source "RpcExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/view/View$OnClickListener;

.field private final synthetic c:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->b:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->c:Ljava/lang/String;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;)Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$3(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)V

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$4(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$4(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$4(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->c:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5$1;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->b:Landroid/view/View$OnClickListener;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5$1;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$5(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 417
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$4(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0
.end method
