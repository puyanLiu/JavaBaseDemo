.class Lcom/aps/b$2;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aps/b;


# direct methods
.method constructor <init>(Lcom/aps/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/aps/b$2;->b:Lcom/aps/b;

    iput p2, p0, Lcom/aps/b$2;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/aps/b$2;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->k(Lcom/aps/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/b$2;->b:Lcom/aps/b;

    iget v1, p0, Lcom/aps/b$2;->a:I

    invoke-static {v0, v1}, Lcom/aps/b;->c(Lcom/aps/b;I)V

    iget-object v0, p0, Lcom/aps/b$2;->b:Lcom/aps/b;

    invoke-virtual {v0}, Lcom/aps/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/b$2;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->l(Lcom/aps/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/b$2;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->l(Lcom/aps/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
