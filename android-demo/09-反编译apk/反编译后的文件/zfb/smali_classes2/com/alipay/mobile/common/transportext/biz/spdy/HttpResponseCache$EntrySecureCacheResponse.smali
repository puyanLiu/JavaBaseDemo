.class Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;
.super Ljava/net/SecureCacheResponse;
.source "HttpResponseCache.java"


# instance fields
.field private final entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

.field private final in:Ljava/io/InputStream;

.field private final snapshot:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)V
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    .line 655
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    .line 656
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    .line 657
    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    .line 658
    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 689
    :cond_0
    const/4 v0, 0x0

    .line 691
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 696
    :cond_0
    const/4 v0, 0x0

    .line 698
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 682
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 675
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
