.class final Lcom/thinkyeah/smartlock/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/smartlock/view/c;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Lcom/thinkyeah/smartlock/view/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->b(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->c(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Lcom/thinkyeah/smartlock/co;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thinkyeah/smartlock/co;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->setResult(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->d(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;I)V

    const/4 v0, 0x5

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->c(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Lcom/thinkyeah/smartlock/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->e()J

    move-result-wide v0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v2, v0, v1}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    sget-object v1, Lcom/thinkyeah/smartlock/ao;->b:Lcom/thinkyeah/smartlock/ao;

    invoke-static {v0, v1}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;Lcom/thinkyeah/smartlock/ao;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->e(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Lcom/thinkyeah/smartlock/view/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/am;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->b(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
