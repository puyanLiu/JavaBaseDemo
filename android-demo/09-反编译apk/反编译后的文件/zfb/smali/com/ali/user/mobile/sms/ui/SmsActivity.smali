.class public abstract Lcom/ali/user/mobile/sms/ui/SmsActivity;
.super Lcom/ali/user/mobile/login/ui/BaseLoginActivity;
.source "SmsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCodeCallBack;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field protected hasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

.field protected isNeedAutoInputSms:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

.field protected mCheckCodeInputBox:Landroid/widget/EditText;

.field protected mCheckCodeTextView:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "checkCodeTextView"
    .end annotation
.end field

.field protected mCheckCodeViewInput:Lcom/ali/user/mobile/ui/widget/AUInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "checkCodeSend"
    .end annotation
.end field

.field protected mIsSmsAutoRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mNextStep:Landroid/widget/Button;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "nextStep"
    .end annotation
.end field

.field protected mSmsMobileTip:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "smsForMobile"
    .end annotation
.end field

.field protected mobileNo:Ljava/lang/String;

.field protected regionNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->isNeedAutoInputSms:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mIsSmsAutoRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    return-void
.end method


# virtual methods
.method public OnAutoReadSms(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->isNeedAutoInputSms:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const-string/jumbo v0, "SMSBizActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isNeedAutoInputSms="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->isNeedAutoInputSms:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const-string/jumbo v0, "SMSBizActivity"

    const-string/jumbo v1, "auto read empty sms"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "auto read empty sms"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 230
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->hasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->validate()V

    .line 232
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mIsSmsAutoRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 233
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->isNeedAutoInputSms:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->stopAutoReadSms()V

    .line 236
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_auto_input_sms_code:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string/jumbo v1, "SMSBizActivity"

    const-string/jumbo v2, "exception when auto read sms"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->dismissProgress()V

    .line 177
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-boolean v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    goto :goto_0
.end method

.method protected afterViews()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mSmsMobileTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->smsForMobileTip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mobileNo:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeViewInput:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 84
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeViewInput:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    new-instance v3, Lcom/ali/user/mobile/sms/ui/SmsActivity$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/ali/user/mobile/sms/ui/SmsActivity$1;-><init>(Lcom/ali/user/mobile/sms/ui/SmsActivity;Landroid/view/View;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->initViewChains()V

    .line 86
    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->initViewListeners()V

    .line 88
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeTextView:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->scheduleTimer()V

    .line 89
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->showInputMethodPannel(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method protected checkMobileNo()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mobileNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mobileNo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 129
    :goto_1
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->finish()V

    .line 133
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mobileNo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    const/4 v1, 0x1

    .line 126
    goto :goto_1

    .line 123
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected initViewChains()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->hasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    .line 111
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->hasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mNextStep:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    .line 113
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->hasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    .line 114
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->hasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    return-void
.end method

.method protected initViewListeners()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mNextStep:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeTextView:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    new-instance v1, Lcom/ali/user/mobile/sms/ui/SmsActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity$2;-><init>(Lcom/ali/user/mobile/sms/ui/SmsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    .line 148
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->nextStep:I

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->stopAutoReadSms()V

    .line 165
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->verifySms(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "regionNo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->regionNo:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mobile_for_sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mobileNo:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->checkMobileNo()V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeTextView:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->scheduleTimer()V

    .line 193
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->dispose()V

    .line 196
    :cond_0
    return-void
.end method

.method protected sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 159
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected startAutoReadSms()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 199
    const-string/jumbo v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-virtual {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCodeCallBack;)V

    iput-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    .line 208
    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->isNeedAutoInputSms:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 209
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "95188"

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->dispose()V

    goto :goto_1
.end method

.method protected stopAutoReadSms()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->dispose()V

    .line 216
    :cond_0
    return-void
.end method

.method protected verifySms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 172
    return-void
.end method
