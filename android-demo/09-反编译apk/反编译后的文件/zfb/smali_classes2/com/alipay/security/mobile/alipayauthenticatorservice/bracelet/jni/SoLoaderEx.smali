.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;
.super Ljava/lang/Object;
.source "SoLoaderEx.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sput-object p1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private copyLib(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 132
    const/4 v2, 0x0

    .line 134
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "lib"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    const-string/jumbo v3, "x86"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "lib/x86/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :try_start_2
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lib:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    :goto_1
    if-eqz v3, :cond_3

    .line 165
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const/4 v0, 0x1

    .line 176
    :goto_2
    return v0

    .line 146
    :cond_0
    const-string/jumbo v3, "armeabi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "lib/armeabi/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 149
    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v3

    move-object v4, v1

    move-object v8, v1

    move-object v1, v3

    move-object v3, v8

    .line 161
    :goto_3
    sget-object v6, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_1

    .line 169
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->deleteSoFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 173
    invoke-direct {p0, p1, v0, v5, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->saveSo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    goto :goto_2

    .line 160
    :catch_1
    move-exception v3

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 102
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 103
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->deleteFile(Ljava/io/File;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 109
    :cond_3
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method private deleteSoFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx$DelFileFilter;

    invoke-direct {v1, p0, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx$DelFileFilter;-><init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 86
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 88
    invoke-direct {p0, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 94
    :cond_0
    return-void
.end method

.method private getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method private saveFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    .line 212
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 215
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 217
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 221
    const/16 v0, 0x200

    :try_start_3
    new-array v0, v0, [B

    .line 223
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    .line 224
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 230
    :goto_1
    :try_start_4
    sget-object v5, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 235
    if-eqz v4, :cond_1

    .line 236
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 237
    :cond_1
    if-eqz v2, :cond_2

    .line 240
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 241
    :cond_2
    if-eqz v3, :cond_3

    .line 244
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    move v0, v1

    .line 252
    :goto_2
    return v0

    .line 226
    :cond_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 227
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 228
    const/4 v0, 0x1

    .line 235
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 237
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 241
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 247
    :catch_1
    move-exception v0

    .line 249
    sget-object v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move v0, v1

    .line 251
    goto :goto_2

    .line 247
    :catch_2
    move-exception v0

    .line 249
    sget-object v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move v0, v1

    .line 251
    goto :goto_2

    .line 231
    :catch_3
    move-exception v0

    move-object v3, v2

    move-object v5, v2

    .line 232
    :goto_3
    :try_start_8
    sget-object v4, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 235
    if-eqz v5, :cond_5

    .line 236
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 237
    :cond_5
    if-eqz v3, :cond_6

    .line 240
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 241
    :cond_6
    if-eqz v2, :cond_7

    .line 244
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_7
    move v0, v1

    .line 245
    goto :goto_2

    .line 247
    :catch_4
    move-exception v0

    .line 249
    sget-object v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move v0, v1

    .line 251
    goto :goto_2

    .line 234
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v5, v2

    .line 235
    :goto_4
    if-eqz v5, :cond_8

    .line 236
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 237
    :cond_8
    if-eqz v3, :cond_9

    .line 240
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 241
    :cond_9
    if-eqz v2, :cond_a

    .line 244
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 250
    :cond_a
    :goto_5
    throw v0

    .line 247
    :catch_5
    move-exception v1

    .line 248
    sget-object v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto :goto_5

    .line 234
    :catchall_1
    move-exception v0

    move-object v5, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_4

    .line 231
    :catch_6
    move-exception v0

    move-object v5, v2

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v2, v4

    goto :goto_3

    .line 229
    :catch_9
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_1

    :catch_a
    move-exception v0

    move-object v4, v2

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto/16 :goto_1

    :catch_b
    move-exception v0

    move-object v4, v5

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto/16 :goto_1
.end method

.method private saveSo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    const-class v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_1

    .line 184
    if-nez p1, :cond_0

    .line 185
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    .line 188
    :cond_0
    invoke-direct {p0, v1, p4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->saveFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    .line 191
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return v0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    sget-object v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto :goto_0

    .line 197
    :cond_1
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "error: can\'t find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public loadSo(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_BK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->getFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->copyLib(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lib"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v0

    .line 39
    sget-object v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move v0, v1

    .line 40
    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 60
    sget-object v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move v0, v1

    .line 61
    goto :goto_0

    .line 67
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "error can\'t find %1$s lib in plugins_lib"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    move v0, v1

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "error copy %1$s lib fail"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;->TAG:Ljava/lang/String;

    move v0, v1

    .line 76
    goto :goto_0
.end method
