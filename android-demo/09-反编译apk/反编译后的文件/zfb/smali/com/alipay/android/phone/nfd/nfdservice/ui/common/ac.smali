.class Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "WifiHelper.java"

    const-class v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.phone.nfd.nfdservice.ui.common.WifiHelper$OtherReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x367

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "OtherReceiver action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->b(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->f(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->g(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->h(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->i(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v5, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->f(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    move-result-object v5

    const-string/jumbo v6, "WiFi_Sync_Switch"

    invoke-virtual {v5, v6, v8}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->h()V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->j(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->h()V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_0
    const-string/jumbo v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v6, v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v6, "com.eg.android.AlipayGphone.nfd.action.wifireceiver.unregist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v5, "WifiHelper"

    const-string/jumbo v6, "unregist wifi receiver by unregist action"

    invoke-static {v5, v6}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->k(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->h(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v6, "com.eg.android.AlipayGphone.nfd.action.wifireceiver.regist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v5, "WifiHelper"

    const-string/jumbo v6, "regist wifi receiver by regist action"

    invoke-static {v5, v6}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "com.eg.android.AlipayGphone.nfd.action.foreground.enter"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->j(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    move-result-object v5

    const-string/jumbo v6, "WiFi_Sync_Switch"

    invoke-virtual {v5, v6, v8}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->h()V

    :cond_7
    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->l(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v6, "com.eg.android.AlipayGphone.nfd.action.foreground.exit"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->j(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->g(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    move-result-object v5

    const-string/jumbo v6, "WiFi_Sync_Switch"

    invoke-virtual {v5, v6, v8}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->k(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->h(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->i(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "com.alipay.action.ENABLE_NFD_AUTO_DISCOVERY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->g()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v6, v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(I)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v6, "com.alipay.action.DISABLE_NFD_AUTO_DISCOVERY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->m(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Lcom/alipay/android/phone/nfd/nfdservice/biz/k;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->m(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Lcom/alipay/android/phone/nfd/nfdservice/biz/k;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/k;->a()V

    goto/16 :goto_0
.end method
