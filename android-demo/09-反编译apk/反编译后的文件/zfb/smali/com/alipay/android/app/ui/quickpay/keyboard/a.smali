.class final Lcom/alipay/android/app/ui/quickpay/keyboard/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(I[I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 146
    :pswitch_0
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->i(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->e(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->f(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    goto :goto_0

    .line 128
    :pswitch_4
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 129
    if-lez v1, :cond_0

    .line 130
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 135
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto/16 :goto_0

    .line 150
    :cond_2
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 152
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 153
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onPress(I)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public final onRelease(I)V
    .locals 3

    .prologue
    .line 100
    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    .line 103
    :cond_0
    return-void
.end method

.method public final onText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final swipeDown()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public final swipeLeft()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final swipeRight()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final swipeUp()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
