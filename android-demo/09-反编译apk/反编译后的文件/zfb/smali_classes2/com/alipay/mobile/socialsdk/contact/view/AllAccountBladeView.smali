.class public Lcom/alipay/mobile/socialsdk/contact/view/AllAccountBladeView;
.super Lcom/alipay/mobile/personalbase/view/CustomBladeView;
.source "AllAccountBladeView.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 12
    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 13
    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    .line 11
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/view/AllAccountBladeView;->a:[Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getLetters()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/view/AllAccountBladeView;->a:[Ljava/lang/String;

    return-object v0
.end method
