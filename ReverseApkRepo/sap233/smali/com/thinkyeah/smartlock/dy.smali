.class final Lcom/thinkyeah/smartlock/dy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/a/m;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/SmartLockActivity;


# direct methods
.method private constructor <init>(Lcom/thinkyeah/smartlock/SmartLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkyeah/smartlock/SmartLockActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/dy;-><init>(Lcom/thinkyeah/smartlock/SmartLockActivity;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/thinkyeah/smartlock/SmartLockActivity;->l()Lcom/thinkyeah/common/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[allow] policyReason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->c(Lcom/thinkyeah/smartlock/SmartLockActivity;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->d(Lcom/thinkyeah/smartlock/SmartLockActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->d(Lcom/thinkyeah/smartlock/SmartLockActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->c()V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x123

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/thinkyeah/smartlock/SmartLockActivity;->l()Lcom/thinkyeah/common/c;

    move-result-object v0

    const-string v1, "skip the policyReason RETRY"

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->c(Lcom/thinkyeah/smartlock/SmartLockActivity;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0, v1, p1}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;II)V

    :cond_2
    invoke-static {}, Lcom/thinkyeah/smartlock/SmartLockActivity;->l()Lcom/thinkyeah/common/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[dontAllow] policyReason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->d(Lcom/thinkyeah/smartlock/SmartLockActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->d(Lcom/thinkyeah/smartlock/SmartLockActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->b()V

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->e(Lcom/thinkyeah/smartlock/SmartLockActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/thinkyeah/smartlock/dz;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/dz;-><init>(Lcom/thinkyeah/smartlock/dy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/thinkyeah/smartlock/SmartLockActivity;->l()Lcom/thinkyeah/common/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[applicationError] errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->c(Lcom/thinkyeah/smartlock/SmartLockActivity;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method
