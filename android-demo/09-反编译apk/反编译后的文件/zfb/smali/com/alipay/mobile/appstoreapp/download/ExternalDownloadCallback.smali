.class public Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;
.super Ljava/lang/Object;
.source "ExternalDownloadCallback.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Landroid/app/Notification;

.field private e:Landroid/app/NotificationManager;

.field private f:I

.field private g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

.field private h:Landroid/support/v4/content/LocalBroadcastManager;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x698

    sput v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x10000000

    const/16 v2, 0x698

    const/4 v5, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    .line 45
    iput v5, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->f:I

    .line 48
    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->j:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 56
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->h:Landroid/support/v4/content/LocalBroadcastManager;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 59
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "notification"

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 58
    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->e:Landroid/app/NotificationManager;

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    .line 62
    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTargetFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->j:Ljava/lang/String;

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->isShowRunningNotification()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    const v1, 0x186a0

    if-le v0, v1, :cond_1

    sput v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    :cond_1
    sget v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    iput v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/openplatform/R$string;->t:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "layout"

    const-string/jumbo v4, "download_progress"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "download_process_bar"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "download_process_title_txt"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "command"

    const-string/jumbo v4, "cancel"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "downloadUrl"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    iget v4, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    invoke-static {v3, v4, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "update_cancel_btn"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string/jumbo v2, "drawable"

    const-string/jumbo v3, "download_icon"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "cancel"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "downloadUrl"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "request"

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "cancelDownloadConfirm"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v5, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 72
    :cond_3
    return-void

    .line 66
    :cond_4
    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 67
    if-lez v0, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTargetFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->j:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 304
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 308
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "progress_text"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "download_process_bar"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 185
    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 184
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->e:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DOWNLOAD"

    iget v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 187
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4e0b\u8f7d\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%,notifyId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->h:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 130
    return-void
.end method

.method private b()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.android.EXT_DOWNLOAD_EVENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "downloadUrl"

    .line 135
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "downloadRequest"

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v1, "filePath"

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 293
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancelNotification:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->e:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DOWNLOAD"

    iget v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 300
    :cond_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(I)V

    .line 91
    return-void
.end method

.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD"

    const-string/jumbo v2, "\u53d6\u6d88\u4e0b\u8f7d"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b()Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "cancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    .line 82
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c()V

    .line 83
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 87
    :cond_0
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4e0b\u8f7d\u5931\u8d25:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b()Landroid/content/Intent;

    move-result-object v0

    .line 154
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "fail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string/jumbo v1, "errorMsg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c()V

    .line 160
    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4e0b\u8f7d\u5b8c\u6210, downloadpath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",targetpath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 111
    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b()Landroid/content/Intent;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "finish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/openplatform/R$string;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "download_process_title_txt"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "progress_text"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "100%"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "download_process_bar"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->e:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DOWNLOAD"

    iget v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c()V

    .line 126
    :cond_1
    return-void

    .line 114
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->j:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD"

    const-string/jumbo v2, "\u51c6\u5907\u4e0b\u8f7d"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b()Landroid/content/Intent;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "prepare"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->isNeedProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p2

    double-to-int v1, v0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->isShowRunningNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->f:I

    sub-int v2, v1, v2

    if-le v2, v0, :cond_0

    if-lez v1, :cond_0

    const/16 v0, 0x64

    if-ge v1, v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "status"

    const-string/jumbo v3, "downloading"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    invoke-direct {p0, v1}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(I)V

    iput v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->f:I

    .line 146
    :cond_0
    return-void

    .line 144
    :cond_1
    const/16 v0, 0x1e

    goto :goto_0
.end method
