.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;


# static fields
.field private static a:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:Landroid/os/Handler;

.field private f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->b:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->d:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->e:Landroid/os/Handler;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->e:Landroid/os/Handler;

    .line 61
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 62
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 61
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    .line 65
    div-int/lit8 v0, v0, 0x10

    .line 66
    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/a/c;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/c;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;I)V

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->c:Landroid/support/v4/util/LruCache;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->c:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method public static a()Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    .line 83
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    .line 89
    const-string/jumbo v0, "[pixelWidth]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "[pixelWidth]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 94
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Ljava/lang/String;[II)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x64

    .line 106
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_7

    aget v2, p3, v6

    const/4 v1, 0x1

    aget v1, p3, v1

    :goto_1
    if-gtz v2, :cond_2

    move v2, v0

    :cond_2
    if-gtz v1, :cond_3

    move v1, v0

    :cond_3
    invoke-static {p2, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-direct {v0, p0, v6}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;B)V

    invoke-static {v0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;Landroid/view/View;)V

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)V

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)V

    invoke-static {v0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;I)V

    new-instance v4, Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;)V

    iput-object v0, v4, Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    iput-object v3, v4, Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    iput-object p0, v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

    iput-object v4, v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    iput v2, v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->width:I

    iput v1, v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->height:I

    iput-object v3, v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iput-object p1, v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/a/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/g;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;)V

    iput-object p1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/a/g;->a:Landroid/view/View;

    iput-object v7, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/a/g;->b:Ljava/lang/String;

    iput-boolean v6, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/a/g;->c:Z

    iput-object v1, v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TemplateImageLoader"

    const-string/jumbo v2, "loadImage got a null task"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_7
    move v1, v0

    move v2, v0

    goto/16 :goto_1
.end method

.method public final getPluginKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final process(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "TemplateImageLoader"

    const-string/jumbo v1, "multimedia ImageWorkPlugin process"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-object p2
.end method
