.class public final Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_DELETEDIDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_EXTVERSION:Ljava/lang/Long;

.field public static final DEFAULT_OPEN:Ljava/lang/Boolean;

.field public static final DEFAULT_RESULTCODE:Ljava/lang/Integer;

.field public static final DEFAULT_RESULTDESC:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final DEFAULT_SYNCMAXOPID:Ljava/lang/String; = ""

.field public static final DEFAULT_VERSION:Ljava/lang/Long;

.field public static final DEFAULT_WELCOMELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_DELETEDIDS:I = 0x5

.field public static final TAG_EXTVERSION:I = 0x7

.field public static final TAG_OPEN:I = 0x8

.field public static final TAG_RESULTCODE:I = 0x2

.field public static final TAG_RESULTDESC:I = 0x3

.field public static final TAG_RESULTLIST:I = 0x4

.field public static final TAG_SUCCESS:I = 0x1

.field public static final TAG_SYNCMAXOPID:I = 0xa

.field public static final TAG_VERSION:I = 0x6

.field public static final TAG_WELCOMELIST:I = 0x9


# instance fields
.field public deletedIds:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extVersion:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public open:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultCode:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultDesc:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;",
            ">;"
        }
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public syncMaxOpId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public version:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public welcomeList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->DEFAULT_RESULTCODE:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->DEFAULT_RESULTLIST:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->DEFAULT_DELETEDIDS:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->DEFAULT_VERSION:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->DEFAULT_EXTVERSION:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->DEFAULT_OPEN:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->DEFAULT_WELCOMELIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->success:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultCode:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultDesc:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->version:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->extVersion:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->extVersion:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->open:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->open:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->success:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultDesc:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultDesc:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->version:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->version:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->extVersion:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->extVersion:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->open:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->open:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->success:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultCode:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultDesc:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->version:Ljava/lang/Long;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->extVersion:Ljava/lang/Long;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->open:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->hashCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultCode:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultDesc:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultDesc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->version:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->version:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->extVersion:Ljava/lang/Long;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->extVersion:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->open:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->open:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->hashCode:I

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_6

    :cond_a
    move v0, v1

    goto :goto_7
.end method
