.class final Lcom/alipay/android/app/assist/h;
.super Ljava/lang/Object;
.source "MspAssistUtil.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;


# instance fields
.field private final synthetic a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/assist/h;->a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    iput-object p2, p0, Lcom/alipay/android/app/assist/h;->b:Ljava/lang/String;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;)V
    .locals 3

    .prologue
    .line 621
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->d(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/alipay/android/app/assist/h;->a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    iget-object v1, p0, Lcom/alipay/android/app/assist/h;->b:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void
.end method
