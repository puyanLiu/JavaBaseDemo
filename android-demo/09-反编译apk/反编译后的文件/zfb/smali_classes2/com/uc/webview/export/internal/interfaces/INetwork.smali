.class public interface abstract Lcom/uc/webview/export/internal/interfaces/INetwork;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Reflection;
.end annotation


# static fields
.field public static final ALINETWORK:I = 0x1

.field public static final THIRDNETWORK:I = 0x2

.field public static final UCNETWORK:I


# virtual methods
.method public abstract cancelPrefetchLoad()V
.end method

.method public abstract clearUserSslPrefTable()V
.end method

.method public abstract formatRequest(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Lcom/uc/webview/export/internal/interfaces/IRequest;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract requestURL(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Z
.end method

.method public abstract sendRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)Z
.end method
