.class Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;
.super Landroid/os/AsyncTask;
.source "NFCAppDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;B)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;-><init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->syncOneAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    :try_end_0
    .catch Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "syncOneAppInfo error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a([Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NFC/AppDetailActivity"

    const-string/jumbo v2, "app is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    const-string/jumbo v1, "\u7cfb\u7edf\u7e41\u5fd9"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->c(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$QueryAppDetailAsyncTask;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    const-string/jumbo v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 104
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 105
    return-void
.end method
