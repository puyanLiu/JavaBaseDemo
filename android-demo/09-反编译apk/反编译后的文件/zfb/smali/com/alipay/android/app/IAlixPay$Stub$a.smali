.class final Lcom/alipay/android/app/IAlixPay$Stub$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/IAlixPay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/IAlixPay$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/alipay/android/app/IAlixPay$Stub$a;->a:Landroid/os/IBinder;

    .line 122
    return-void
.end method


# virtual methods
.method public final Pay(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 148
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/android/app/IAlixPay$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 151
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 155
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/IAlixPay$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final deployFastConnect()V
    .locals 5

    .prologue
    .line 253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 256
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/alipay/android/app/IAlixPay$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 258
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final manager(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 271
    :try_start_0
    const-string/jumbo v3, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/alipay/android/app/IAlixPay$Stub$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 274
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 278
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    return v0

    .line 278
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final prePay(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 239
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/android/app/IAlixPay$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 242
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 243
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 246
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 5

    .prologue
    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 194
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alipay/android/app/IRemoteServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/android/app/IAlixPay$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 197
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final test()Ljava/lang/String;
    .locals 5

    .prologue
    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 173
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/alipay/android/app/IAlixPay$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 175
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 176
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 179
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 5

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 212
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 213
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alipay/android/app/IRemoteServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 214
    iget-object v0, p0, Lcom/alipay/android/app/IAlixPay$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 215
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
