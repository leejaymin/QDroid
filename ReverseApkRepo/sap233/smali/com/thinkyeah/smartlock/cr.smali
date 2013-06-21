.class final Lcom/thinkyeah/smartlock/cr;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/cp;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/cr;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 3

    const v2, 0x7f0b0049

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cr;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cp;->b(Lcom/thinkyeah/smartlock/cp;)Lcom/thinkyeah/smartlock/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cw;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cr;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cp;->j()Landroid/support/v4/app/g;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/cr;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/cp;->j()Landroid/support/v4/app/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/g;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/cr;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cp;->j()Landroid/support/v4/app/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method
