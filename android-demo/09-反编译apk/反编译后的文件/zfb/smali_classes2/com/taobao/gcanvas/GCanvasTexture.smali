.class public Lcom/taobao/gcanvas/GCanvasTexture;
.super Ljava/lang/Object;
.source "GCanvasTexture.java"


# instance fields
.field public id:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasTexture;->url:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/taobao/gcanvas/GCanvasTexture;->id:I

    .line 23
    return-void
.end method
