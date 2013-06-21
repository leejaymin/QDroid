.class final Lcom/thinkyeah/smartlock/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/smartlock/view/c;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->o:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->c(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->d(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->b(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Lcom/thinkyeah/smartlock/aa;

    move-result-object v0

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->e:Lcom/thinkyeah/smartlock/aa;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->b(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Lcom/thinkyeah/smartlock/aa;

    move-result-object v0

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->f:Lcom/thinkyeah/smartlock/aa;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->p:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->g:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->f:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->b(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Lcom/thinkyeah/smartlock/aa;

    move-result-object v0

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->b(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Lcom/thinkyeah/smartlock/aa;

    move-result-object v0

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->c:Lcom/thinkyeah/smartlock/aa;

    if-ne v0, v1, :cond_6

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->c:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->p:Ljava/util/List;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->d:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected stage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->b(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Lcom/thinkyeah/smartlock/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/w;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
