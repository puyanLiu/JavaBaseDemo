.class Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$3;
.super Ljava/lang/Object;
.source "MsgEventDispatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

.field private final synthetic val$followAccountInfo:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

.field private final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$3;->this$0:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$3;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$3;->val$followAccountInfo:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$3;->val$userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$3;->val$followAccountInfo:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 110
    return-void
.end method
