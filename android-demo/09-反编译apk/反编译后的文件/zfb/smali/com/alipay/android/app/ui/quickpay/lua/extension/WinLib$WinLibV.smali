.class final Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WinLibV"
.end annotation


# instance fields
.field private winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    .line 372
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->opcode:I

    .line 373
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->name:Ljava/lang/String;

    .line 374
    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    .line 375
    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 380
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 412
    invoke-super {p0, p1}, Lorg/luaj/vm2/lib/VarArgFunction;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_alert(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 384
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_confirm(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_toast(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_submit(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 390
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_dismiss(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_exit(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 394
    :pswitch_6
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_open(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 397
    :pswitch_7
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_set_interval(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 399
    :pswitch_8
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_clear_interval(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 401
    :pswitch_9
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_set_timeout(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 403
    :pswitch_a
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_clear_timeout(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 406
    :pswitch_b
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_read_sms(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    .line 408
    :pswitch_c
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;->winLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->win_guideview(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
