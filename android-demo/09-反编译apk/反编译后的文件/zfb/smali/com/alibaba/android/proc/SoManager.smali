.class public Lcom/alibaba/android/proc/SoManager;
.super Ljava/lang/Object;
.source "SoManager.java"


# static fields
.field public static final AGOO_PID:Ljava/lang/String; = "agoo.pid"

.field public static final AMPARAMS:Ljava/lang/String; = "startservice -a {packname}.intent.action.COCKROACH --es cockroach cockroach-PPreotect --es pack {packname}"

.field public static final EX_FILE_NAME:Ljava/lang/String; = "DaemonServer"

.field public static final PROCESS_NAME:Ljava/lang/String; = "runServer"

.field private static final a:Ljava/lang/String;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static final g:Ljava/util/concurrent/locks/ReentrantLock;

.field private static h:Lcom/alibaba/android/proc/SoManager;

.field private static final synthetic i:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic j:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field public debugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "SoManager.java"

    const-class v2, Lcom/alibaba/android/proc/SoManager;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setRepeating"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:intervalMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x133

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alibaba/android/proc/SoManager;->i:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setRepeating"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:intervalMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x13a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/proc/SoManager;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 29
    const-class v0, Lcom/alibaba/android/proc/SoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    .line 47
    const/16 v0, 0x708

    sput v0, Lcom/alibaba/android/proc/SoManager;->d:I

    .line 49
    const/16 v0, 0x1c20

    sput v0, Lcom/alibaba/android/proc/SoManager;->e:I

    .line 51
    const/16 v0, 0x9c4

    sput v0, Lcom/alibaba/android/proc/SoManager;->f:I

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/alibaba/android/proc/SoManager;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/android/proc/SoManager;->h:Lcom/alibaba/android/proc/SoManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/proc/SoManager;->b:Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/proc/SoManager;->debugMode:Z

    .line 60
    iput-object p1, p0, Lcom/alibaba/android/proc/SoManager;->b:Landroid/content/Context;

    .line 61
    sput p2, Lcom/alibaba/android/proc/SoManager;->d:I

    .line 62
    iput-boolean p3, p0, Lcom/alibaba/android/proc/SoManager;->debugMode:Z

    .line 63
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    const-string/jumbo v1, "CPU_ABI"

    invoke-static {v0, v1}, Lcom/alibaba/android/proc/SoManager;->a(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/proc/SoManager;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/proc/SoManager;->c:Ljava/lang/String;

    const-string/jumbo v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "armeabi/"

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/android/proc/SoManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Unknown"

    goto :goto_0
.end method

.method private a(Ljava/io/FileOutputStream;)V
    .locals 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/android/proc/SoManager;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/proc/data/SoData;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ">>>soDataSize:datasize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/proc/utils/Base64;->decode([B)[B

    move-result-object v2

    .line 161
    sget-object v0, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ">>>soDataSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    array-length v0, v2

    if-gtz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v1, 0x0

    .line 170
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const/16 v1, 0x64

    :try_start_1
    new-array v1, v1, [B

    .line 172
    :goto_1
    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_2

    .line 174
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 177
    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 185
    :goto_3
    if-eqz v0, :cond_0

    .line 186
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 180
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 185
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 188
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 182
    :catch_3
    move-exception v1

    sget-object v1, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    goto :goto_4

    :catch_4
    move-exception v1

    sget-object v1, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    goto :goto_3

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    :goto_5
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 185
    :goto_6
    if-eqz v1, :cond_3

    .line 186
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 190
    :cond_3
    :goto_7
    throw v0

    .line 182
    :catch_5
    move-exception v2

    sget-object v2, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    goto :goto_6

    .line 188
    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 179
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    .line 177
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private b()Ljava/lang/String;
    .locals 7

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/android/proc/SoManager;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "DaemonServer"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 121
    :cond_0
    sget-object v2, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "open assets from = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/android/proc/SoManager;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "DaemonServer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    :try_start_0
    iget-boolean v3, p0, Lcom/alibaba/android/proc/SoManager;->debugMode:Z

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/alibaba/android/proc/SoManager;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/alibaba/android/proc/SoManager;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "DaemonServer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 127
    const/16 v3, 0x64

    :try_start_1
    new-array v3, v3, [B

    .line 128
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    .line 130
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    :try_start_2
    sget-object v3, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    if-eqz v0, :cond_1

    .line 142
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 148
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 153
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_2
    :try_start_5
    invoke-direct {p0, v2}, Lcom/alibaba/android/proc/SoManager;->a(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    :cond_3
    if-eqz v0, :cond_4

    .line 142
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 148
    :cond_4
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 150
    :catch_1
    move-exception v0

    sget-object v0, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    goto :goto_2

    .line 144
    :catch_2
    move-exception v0

    sget-object v0, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    goto :goto_3

    :catch_3
    move-exception v0

    sget-object v0, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    goto :goto_1

    .line 150
    :catch_4
    move-exception v0

    sget-object v0, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    goto :goto_2

    .line 140
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v1, :cond_5

    .line 142
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 148
    :cond_5
    :goto_5
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 151
    :goto_6
    throw v0

    .line 144
    :catch_5
    move-exception v1

    sget-object v1, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    goto :goto_5

    .line 150
    :catch_6
    move-exception v1

    sget-object v1, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    goto :goto_6

    .line 140
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4
.end method

.method private c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/proc/SoManager;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/lib/\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string/jumbo v2, "\"runServer\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startservice -a {packname}.intent.action.COCKROACH --es cockroach cockroach-PPreotect --es pack {packname}"

    const-string/jumbo v5, "\\{packname\\}"

    iget-object v6, p0, Lcom/alibaba/android/proc/SoManager;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-le v4, v5, :cond_0

    const-string/jumbo v4, " --user 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alibaba/android/proc/SoManager;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v1, "\"agoo.pid\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createAlarm(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v9, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x3

    const/4 v11, 0x2

    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 286
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 287
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 289
    if-eqz v0, :cond_1

    .line 290
    invoke-static {p0}, Lcom/alibaba/android/proc/SoManager;->getIntentForWakeup(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 292
    const/16 v5, 0x17

    if-gt v2, v5, :cond_0

    const/4 v5, 0x6

    if-ge v2, v5, :cond_2

    .line 293
    :cond_0
    sget-object v2, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    .line 294
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget v2, Lcom/alibaba/android/proc/SoManager;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v7, v2

    add-long v2, v3, v7

    sget v4, Lcom/alibaba/android/proc/SoManager;->e:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sget-object v7, Lcom/alibaba/android/proc/SoManager;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v8, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v2, v3}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v4, v5}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    aput-object v6, v9, v1

    invoke-static {v7, v8, v0, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v8

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v7

    invoke-static {v8, v9, v10, v11, v7}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    sget-object v2, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    .line 297
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget v2, Lcom/alibaba/android/proc/SoManager;->f:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v7, v2

    add-long v2, v3, v7

    sget v4, Lcom/alibaba/android/proc/SoManager;->f:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sget-object v7, Lcom/alibaba/android/proc/SoManager;->i:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v8, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v11}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v2, v3}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v4, v5}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    aput-object v6, v9, v1

    invoke-static {v7, v8, v0, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v7

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    invoke-static {v7, v8, v9, v10, v1}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v11

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;IZ)Lcom/alibaba/android/proc/SoManager;
    .locals 2

    .prologue
    .line 97
    :try_start_0
    sget-object v0, Lcom/alibaba/android/proc/SoManager;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 98
    sget-object v0, Lcom/alibaba/android/proc/SoManager;->h:Lcom/alibaba/android/proc/SoManager;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/alibaba/android/proc/SoManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/proc/SoManager;-><init>(Landroid/content/Context;IZ)V

    sput-object v0, Lcom/alibaba/android/proc/SoManager;->h:Lcom/alibaba/android/proc/SoManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    sget-object v0, Lcom/alibaba/android/proc/SoManager;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 107
    :goto_0
    sget-object v0, Lcom/alibaba/android/proc/SoManager;->h:Lcom/alibaba/android/proc/SoManager;

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alibaba/android/proc/SoManager;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alibaba/android/proc/SoManager;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static final getIntentForWakeup(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".intent.action.COCKROACH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string/jumbo v1, "cockroach"

    const-string/jumbo v2, "cockroach-PPreotect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string/jumbo v1, "pack"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 274
    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 5

    .prologue
    .line 242
    sget-object v0, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "api level is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/proc/SoManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/android/proc/SoManager;->createAlarm(Landroid/content/Context;)V

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/android/proc/SoManager;->b()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "chmod 500 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alibaba/android/proc/utils/ShellUtils;->execShell(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/alibaba/android/proc/SoManager;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alibaba/android/proc/utils/ShellUtils;->execShell(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    sget-object v1, Lcom/alibaba/android/proc/SoManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/android/proc/SoManager;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/proc/SoManager;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "daemonserver.pid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 263
    :cond_0
    return-void
.end method
