.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field private committed:Z

.field private final entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)V
    .locals 1

    .prologue
    .line 712
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    .line 714
    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->written:[Z

    .line 715
    return-void

    .line 714
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$1800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;)V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)[Z
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2302(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;Z)Z
    .locals 0

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public final abort()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$2200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;Z)V

    .line 810
    return-void
.end method

.method public final abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 815
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final commit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 795
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$2200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;Z)V

    .line 797
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 801
    :goto_0
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->committed:Z

    .line 802
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-static {v0, p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$2200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newInputStream(I)Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    monitor-enter v2

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 726
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 727
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    :goto_0
    return-object v0

    .line 730
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 732
    :catch_0
    move-exception v1

    monitor-exit v2

    goto :goto_0
.end method

.method public final newOutputStream(I)Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 754
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    monitor-enter v2

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 758
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->written:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 764
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 775
    :goto_0
    :try_start_3
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 767
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$1900(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 769
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 773
    goto :goto_0

    .line 772
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final set(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 781
    const/4 v2, 0x0

    .line 783
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 786
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 787
    return-void

    .line 786
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
