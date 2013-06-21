.class final Lcom/thinkyeah/smartlock/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/bu;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/bu;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/bw;->a:Lcom/thinkyeah/smartlock/bu;

    iput-object p2, p0, Lcom/thinkyeah/smartlock/bw;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f0b001f

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bw;->a:Lcom/thinkyeah/smartlock/bu;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bu;->j()Landroid/support/v4/app/g;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/bn;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bw;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/bn;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bw;->a:Lcom/thinkyeah/smartlock/bu;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bu;->j()Landroid/support/v4/app/g;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bw;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/thinkyeah/smartlock/bw;->a:Lcom/thinkyeah/smartlock/bu;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/bu;->a()V

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->g(Lcom/thinkyeah/smartlock/bn;)V

    goto :goto_0
.end method
