.class public Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/display/uielement/ISubmitable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitValue"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;->b:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;->b:Ljava/lang/String;

    return-object v0
.end method
