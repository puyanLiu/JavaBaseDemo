.class public Lcom/alipay/mobile/map/model/LatLonPointAvatar;
.super Lcom/alipay/mobile/map/model/LatLonPointEx;
.source "LatLonPointAvatar.java"


# static fields
.field private static final serialVersionUID:J = -0x1b84d7e281cb4a62L


# instance fields
.field private avatar:Landroid/graphics/Bitmap;

.field private avatarUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/map/model/LatLonPointEx;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/map/model/LatLonPointAvatar;->avatar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/map/model/LatLonPointAvatar;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/map/model/LatLonPointAvatar;->avatar:Landroid/graphics/Bitmap;

    .line 24
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/map/model/LatLonPointAvatar;->avatarUrl:Ljava/lang/String;

    .line 32
    return-void
.end method
