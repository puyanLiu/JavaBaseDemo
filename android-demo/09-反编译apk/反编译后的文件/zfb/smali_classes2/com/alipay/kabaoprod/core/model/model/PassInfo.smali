.class public Lcom/alipay/kabaoprod/core/model/model/PassInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "PassInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appInfo:Ljava/lang/String;

.field public auxiliaryFields:Ljava/lang/String;

.field public backFields:Ljava/lang/String;

.field public customFields:Ljava/lang/String;

.field public fileInfo:Ljava/lang/String;

.field public locations:Ljava/lang/String;

.field public operations:Ljava/lang/String;

.field public passBaseInfo:Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

.field public passFrom:Ljava/lang/String;

.field public passName:Ljava/lang/String;

.field public presentSuport:Ljava/lang/String;

.field public primaryFields:Ljava/lang/String;

.field public remindSupport:Ljava/lang/String;

.field public secondaryFields:Ljava/lang/String;

.field public shareSuport:Ljava/lang/String;

.field public trendUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 64
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->remindSupport:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->shareSuport:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->presentSuport:Ljava/lang/String;

    .line 10
    return-void
.end method
