.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "FundShareInfo.java"


# instance fields
.field public content:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public targetUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;->content:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;->imgUrl:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;->targetUrl:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;->title:Ljava/lang/String;

    .line 41
    return-void
.end method
