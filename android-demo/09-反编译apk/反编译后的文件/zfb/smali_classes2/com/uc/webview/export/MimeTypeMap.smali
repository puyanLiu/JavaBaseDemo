.class public Lcom/uc/webview/export/MimeTypeMap;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private b:Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/uc/webview/export/MimeTypeMap;->b:Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    .line 24
    return-void
.end method

.method private static declared-synchronized a(I)Lcom/uc/webview/export/MimeTypeMap;
    .locals 4

    .prologue
    .line 113
    const-class v1, Lcom/uc/webview/export/MimeTypeMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/MimeTypeMap;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/MimeTypeMap;->a:Ljava/util/HashMap;

    .line 116
    :cond_0
    sget-object v0, Lcom/uc/webview/export/MimeTypeMap;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/MimeTypeMap;

    .line 117
    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lcom/uc/webview/export/MimeTypeMap;

    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->d(I)Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/uc/webview/export/MimeTypeMap;-><init>(Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;)V

    .line 119
    sget-object v2, Lcom/uc/webview/export/MimeTypeMap;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_1
    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/uc/webview/export/MimeTypeMap;->getSingleton()Lcom/uc/webview/export/MimeTypeMap;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/MimeTypeMap;->b:Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;->getFileExtensionFromUrlEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleton()Lcom/uc/webview/export/MimeTypeMap;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/MimeTypeMap;->a(I)Lcom/uc/webview/export/MimeTypeMap;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleton(Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/MimeTypeMap;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/MimeTypeMap;->a(I)Lcom/uc/webview/export/MimeTypeMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/uc/webview/export/MimeTypeMap;->b:Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/uc/webview/export/MimeTypeMap;->b:Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/uc/webview/export/MimeTypeMap;->b:Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/uc/webview/export/MimeTypeMap;->b:Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MimeTypeMap@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/MimeTypeMap;->b:Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
