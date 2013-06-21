.class final Lcom/thinkyeah/smartlock/bs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/smartlock/view/c;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/bn;

.field private b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/thinkyeah/smartlock/bn;)V
    .locals 1

    iput-object p1, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/bt;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/bt;-><init>(Lcom/thinkyeah/smartlock/bs;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bs;->b:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkyeah/smartlock/bn;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/bs;-><init>(Lcom/thinkyeah/smartlock/bn;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bs;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->b(Lcom/thinkyeah/smartlock/bn;)Lcom/thinkyeah/smartlock/co;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thinkyeah/smartlock/co;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bn;->m()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/bn;->setResult(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/bn;->c(Lcom/thinkyeah/smartlock/bn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/bn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bn;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->d(Lcom/thinkyeah/smartlock/bn;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;I)V

    const/4 v0, 0x5

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->b(Lcom/thinkyeah/smartlock/bn;)Lcom/thinkyeah/smartlock/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->e()J

    move-result-wide v0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v2, v0, v1}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;J)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->r:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    sget-object v1, Lcom/thinkyeah/smartlock/ce;->b:Lcom/thinkyeah/smartlock/ce;

    invoke-static {v0, v1}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;Lcom/thinkyeah/smartlock/ce;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bs;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bs;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/thinkyeah/smartlock/view/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bs;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
