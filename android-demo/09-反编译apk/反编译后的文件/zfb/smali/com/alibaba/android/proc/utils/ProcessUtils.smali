.class public Lcom/alibaba/android/proc/utils/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndRenewPidFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 32
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 44
    invoke-static {}, Lcom/alibaba/android/proc/utils/ProcessUtils;->getSystemPid()I

    move-result v3

    .line 45
    const/4 v1, 0x0

    .line 47
    :try_start_1
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write([C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 54
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 57
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 50
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 54
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 54
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 56
    :goto_3
    throw v0

    .line 41
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 52
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    .line 56
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public static getSystemPid()I
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 21
    return v0
.end method
