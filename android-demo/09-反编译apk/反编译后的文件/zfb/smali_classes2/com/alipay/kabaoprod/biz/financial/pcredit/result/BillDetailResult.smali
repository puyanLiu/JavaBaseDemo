.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillDetailResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "BillDetailResult.java"


# instance fields
.field public pcreditBillStatement:Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;

.field public pcreditPageListLog:Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getPcreditBillStatement()Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillDetailResult;->pcreditBillStatement:Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;

    return-object v0
.end method

.method public getPcreditPageListLog()Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillDetailResult;->pcreditPageListLog:Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;

    return-object v0
.end method

.method public setPcreditBillStatement(Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillDetailResult;->pcreditBillStatement:Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;

    .line 43
    return-void
.end method

.method public setPcreditPageListLog(Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillDetailResult;->pcreditPageListLog:Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;

    .line 55
    return-void
.end method
