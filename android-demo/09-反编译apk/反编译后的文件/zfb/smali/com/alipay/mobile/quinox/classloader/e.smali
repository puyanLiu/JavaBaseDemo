.class final Lcom/alipay/mobile/quinox/classloader/e;
.super Ljava/lang/Object;
.source "InitExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/classloader/c;

.field private b:Lcom/alipay/mobile/quinox/bundle/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/classloader/c;Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/bundle/a;

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v7

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v0, "InitExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bundle deleted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 80
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string/jumbo v0, "InitExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/bundle/a;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/classloader/c;->b(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/classloader/c;->a(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/classloader/c;->a(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;-><init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Lcom/alipay/mobile/quinox/bundle/a;Lcom/alipay/mobile/quinox/bundle/BundlesManager;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string/jumbo v0, "InitExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bundle deleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/String;Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;)V

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/c;->b(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v1

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/c;->c(Lcom/alipay/mobile/quinox/classloader/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/classloader/e;->a()Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    return-object v0
.end method
