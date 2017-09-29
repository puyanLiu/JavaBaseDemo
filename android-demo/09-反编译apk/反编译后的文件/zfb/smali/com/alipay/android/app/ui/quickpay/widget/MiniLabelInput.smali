.class public Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_widget_label_input"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    const-string/jumbo v0, "labelInput"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->l(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "labelInput_labelName"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->e:Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "labelInput_rightIcon"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    .line 53
    const-string/jumbo v1, "labelInput_miniInputHint"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->g:Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "labelInput_isPassword"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->h:Z

    .line 55
    const-string/jumbo v1, "labelInput_maxInputLength"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->i:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->onFinishInflate()V

    .line 58
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->removeIcon()V

    .line 201
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->f:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V

    .line 204
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "mini_icon_clean"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/widget/p;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/widget/p;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->a()V

    return-void
.end method


# virtual methods
.method public addTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    return-void
.end method

.method public clearDefaultIcon()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method public getInputText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputView()Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    return-object v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public initIconListener()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "mini_icon_clean"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/widget/o;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/widget/o;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->initOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V

    .line 160
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->f:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    .line 68
    const-string/jumbo v0, "mini_widget_label_input"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->a:Landroid/widget/LinearLayout;

    .line 69
    const-string/jumbo v0, "mini_widget_label_input_label"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    .line 70
    const-string/jumbo v0, "mini_widget_label_input_input"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->a()V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->h:Z

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setInputType(I)V

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setInputType(I)V

    .line 86
    :cond_3
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->i:I

    if-lez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->i:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/l;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/widget/l;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/m;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/widget/m;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/n;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/widget/n;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    return-void
.end method

.method public setInputDisable()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setEnabled(Z)V

    .line 212
    return-void
.end method

.method public setInputEnable()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setEnabled(Z)V

    .line 216
    return-void
.end method

.method public setInputHint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public setInputLength(I)V
    .locals 4

    .prologue
    .line 227
    if-lez p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 232
    :cond_0
    return-void
.end method

.method public setInputText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setInputType(I)V

    .line 220
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public setOnIconClickListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->f:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    .line 164
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->a()V

    .line 165
    return-void
.end method
