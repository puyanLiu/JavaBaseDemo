.class public abstract Lcom/qihoo360/contacts/service/ITxlUiService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/qihoo360/contacts/service/ITxlUiService;


# static fields
.field static final TRANSACTION_isSmsGuardOpen:I = 0x1

.field static final TRANSACTION_openSmsGuardSetupUI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.qihoo360.contacts.service.ITxlUiService"

    invoke-virtual {p0, p0, v0}, Lcom/qihoo360/contacts/service/ITxlUiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qihoo360/contacts/service/ITxlUiService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.qihoo360.contacts.service.ITxlUiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qihoo360/contacts/service/ITxlUiService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/qihoo360/contacts/service/ITxlUiService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/qihoo360/contacts/service/ITxlUiService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/qihoo360/contacts/service/ITxlUiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string/jumbo v0, "com.qihoo360.contacts.service.ITxlUiService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "com.qihoo360.contacts.service.ITxlUiService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qihoo360/contacts/service/ITxlUiService$Stub;->isSmsGuardOpen()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "com.qihoo360.contacts.service.ITxlUiService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qihoo360/contacts/service/ITxlUiService$Stub;->openSmsGuardSetupUI()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
