.class public Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;
.super Landroid/app/IntentService;
.source "ExternalDownloadIntentService.java"


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/DownloadService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "ExternalDownloadIntentService.java"

    const-class v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onHandleIntent"

    const-string/jumbo v3, "com.alipay.mobile.appstoreapp.download.ExternalDownloadIntentService"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "ExternalDownloadIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private static final synthetic a(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 48
    const-string/jumbo v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    const-string/jumbo v0, "isUsedInAppCenter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    const-string/jumbo v0, "request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "ExternalDownloadIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isUsedInAppCenter=>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    const-string/jumbo v4, " ;requestList.size=>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    :cond_1
    return-void

    .line 54
    :cond_2
    const-string/jumbo v0, "request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    .line 61
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    .line 63
    const-string/jumbo v0, "add"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "ExternalDownloadIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addDownload-downloadUrl=>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    const-string/jumbo v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDefaultDownloadDir()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.android.EXT_DOWNLOAD_EVENT_FILTER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "downloadUrl"

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "downloadRequest"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "filePath"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "status"

    const-string/jumbo v2, "cancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_1

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;

    invoke-direct {v4, v1, v3}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;-><init>(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ExternalDownloadIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u5f00\u59cb\u4e0b\u8f7d\uff1a"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->a:Lcom/alipay/mobile/framework/service/common/DownloadService;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->a:Lcom/alipay/mobile/framework/service/common/DownloadService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->a:Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v0, v2, v3, v6, v4}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a()V

    sget-object v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 68
    :cond_9
    const-string/jumbo v0, "true"

    const-string/jumbo v2, "cancelDownloadConfirm"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    const-string/jumbo v2, "downloadUrl"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    if-eqz v5, :cond_0

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "ExternalDownloadIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "command:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ",comfirmCancel:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ",downloadurl:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v2, "cancel"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    if-nez v0, :cond_a

    .line 76
    invoke-static {v5}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 78
    :cond_a
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 79
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 81
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/openplatform/R$string;->x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/openplatform/R$string;->y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    new-instance v4, Lcom/alipay/mobile/appstoreapp/download/a;

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/appstoreapp/download/a;-><init>(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/alipay/mobile/openplatform/R$string;->w:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    invoke-static {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    if-eqz p0, :cond_0

    .line 104
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 105
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 107
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 176
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onHandleIntent at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Intent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;->a(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;Landroid/content/Intent;)V

    return-void
.end method
