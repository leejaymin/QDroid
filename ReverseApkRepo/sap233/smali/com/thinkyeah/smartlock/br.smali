.class final Lcom/thinkyeah/smartlock/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/bn;


# direct methods
.method private constructor <init>(Lcom/thinkyeah/smartlock/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkyeah/smartlock/bn;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/br;-><init>(Lcom/thinkyeah/smartlock/bn;)V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->e(Lcom/thinkyeah/smartlock/bn;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->b(Lcom/thinkyeah/smartlock/bn;)Lcom/thinkyeah/smartlock/co;

    move-result-object v4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->f(Lcom/thinkyeah/smartlock/bn;)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v3, v0}, Lcom/thinkyeah/smartlock/co;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bn;->m()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/bn;->setResult(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/bn;->c(Lcom/thinkyeah/smartlock/bn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/bn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bn;->finish()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->d(Lcom/thinkyeah/smartlock/bn;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;I)V

    const/4 v0, 0x5

    if-lt v3, v0, :cond_6

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->b(Lcom/thinkyeah/smartlock/bn;)Lcom/thinkyeah/smartlock/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->e()J

    move-result-wide v3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0, v3, v4}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;J)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->e(Lcom/thinkyeah/smartlock/bn;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/thinkyeah/smartlock/br;->a:Lcom/thinkyeah/smartlock/bn;

    sget-object v2, Lcom/thinkyeah/smartlock/ce;->b:Lcom/thinkyeah/smartlock/ce;

    invoke-static {v0, v2}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;Lcom/thinkyeah/smartlock/ce;)V

    goto :goto_2
.end method
