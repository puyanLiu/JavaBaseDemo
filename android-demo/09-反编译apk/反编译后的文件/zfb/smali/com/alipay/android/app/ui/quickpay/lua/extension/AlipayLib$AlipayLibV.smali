.class final Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib$AlipayLibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlipayLibV"
.end annotation


# instance fields
.field private alipayLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    .line 38
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib$AlipayLibV;->opcode:I

    .line 39
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib$AlipayLibV;->name:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib$AlipayLibV;->alipayLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib;

    .line 41
    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib$AlipayLibV;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 51
    invoke-super {p0, p1}, Lorg/luaj/vm2/lib/VarArgFunction;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib$AlipayLibV;->alipayLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib;->toMoney(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
