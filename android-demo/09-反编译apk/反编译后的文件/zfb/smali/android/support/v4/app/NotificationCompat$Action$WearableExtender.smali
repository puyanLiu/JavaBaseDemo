.class public final Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Action$Extender;


# instance fields
.field private a:I

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "flags"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    const-string/jumbo v1, "inProgressLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    const-string/jumbo v1, "confirmLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    const-string/jumbo v1, "cancelLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method


# virtual methods
.method public final clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 2

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;-><init>()V

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public final extend(Landroid/support/v4/app/NotificationCompat$Action$Builder;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "flags"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "inProgressLabel"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "confirmLabel"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "cancelLabel"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final getCancelLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getConfirmLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getInProgressLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isAvailableOffline()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    goto :goto_0
.end method

.method public final setCancelLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setConfirmLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setInProgressLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    return-object p0
.end method
