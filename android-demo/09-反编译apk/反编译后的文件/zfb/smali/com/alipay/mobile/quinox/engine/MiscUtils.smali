.class public Lcom/alipay/mobile/quinox/engine/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MiscUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, v1

    .line 95
    :goto_0
    if-nez v2, :cond_0

    .line 111
    :goto_1
    return-object v0

    .line 97
    :cond_0
    if-nez p2, :cond_1

    .line 98
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 102
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 105
    const-string/jumbo v3, "MiscUtils"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    .line 100
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 176
    .line 181
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    .line 186
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_0

    .line 194
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 195
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 196
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 198
    const/4 v0, 0x1

    .line 204
    invoke-static {v4}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->closeStream(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->closeStream(Ljava/io/Closeable;)V

    .line 208
    :goto_1
    return v0

    .line 187
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v1, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 200
    :goto_2
    :try_start_4
    const-string/jumbo v4, "MiscUtils"

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 204
    invoke-static {v3}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->closeStream(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 201
    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    .line 202
    :goto_3
    :try_start_5
    const-string/jumbo v3, "MiscUtils"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 204
    invoke-static {v4}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->closeStream(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 204
    :goto_4
    invoke-static {v4}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->closeStream(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->closeStream(Ljava/io/Closeable;)V

    .line 206
    throw v0

    .line 203
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_4

    .line 201
    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    .line 199
    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_2
.end method

.method private static a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 318
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 323
    array-length v3, p0

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_2

    .line 327
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 328
    array-length v4, p1

    move v1, v0

    :goto_2
    if-lt v1, v4, :cond_3

    .line 333
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 323
    :cond_2
    aget-object v4, p0, v1

    .line 324
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    :cond_3
    aget-object v5, p1, v1

    .line 329
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 304
    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 307
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 308
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 314
    :cond_1
    :goto_0
    return-object v0

    .line 310
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception reading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 312
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception reading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    if-nez p3, :cond_2

    .line 77
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :catch_1
    move-exception v1

    .line 84
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    :catch_2
    move-exception v1

    .line 86
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 243
    if-eqz p0, :cond_0

    .line 244
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 147
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 161
    :cond_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 220
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    .line 224
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-gez v3, :cond_1

    .line 228
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_1
    return v0

    .line 225
    :cond_1
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v1

    .line 228
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 229
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 232
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static fileFromAssets(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 123
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 132
    :cond_2
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getBootClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 47
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BootClassLoader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    return-object p0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0
.end method

.method public static getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 2

    .prologue
    .line 338
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 339
    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 340
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-object v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    const-string/jumbo v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string/jumbo v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    const-string/jumbo v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 62
    :catch_2
    move-exception v0

    .line 63
    const-string/jumbo v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static reportFail(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 251
    const-string/jumbo v0, "NativeApkEngine"

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public static verifyApk([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-static {p1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->verifyMD5AndLoadCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 257
    if-nez v3, :cond_0

    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 262
    if-eqz v3, :cond_1

    array-length v2, v3

    if-lez v2, :cond_1

    .line 263
    array-length v4, v3

    .line 264
    array-length v0, v3

    new-array v0, v0, [Landroid/content/pm/Signature;

    move v2, v1

    .line 265
    :goto_1
    if-lt v2, v4, :cond_2

    .line 273
    :cond_1
    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    goto :goto_0

    .line 267
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/pm/Signature;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v1, v0, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 268
    :catch_0
    move-exception v1

    .line 269
    const-string/jumbo v5, "MiscUtils"

    invoke-static {v5, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static verifyMD5AndLoadCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 6

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 285
    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 286
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 287
    const-string/jumbo v3, "classes.dex"

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v3

    .line 288
    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    if-nez v0, :cond_0

    .line 290
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " Has no certificates at entry "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; ignoring!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_0
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 294
    :goto_1
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 293
    :catch_1
    move-exception v1

    goto :goto_1
.end method
