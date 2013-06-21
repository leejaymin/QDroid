.class final Lcom/thinkyeah/smartlock/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field a:Z

.field final synthetic b:Lcom/thinkyeah/smartlock/AddAppActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/thinkyeah/smartlock/f;->b:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/f;->a:Z

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/f;->b:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->h(Lcom/thinkyeah/smartlock/AddAppActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/f;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/f;->b:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/f;->b:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/AddAppActivity;->i(Lcom/thinkyeah/smartlock/AddAppActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/f;->a:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/f;->b:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->i(Lcom/thinkyeah/smartlock/AddAppActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/f;->b:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->g(Lcom/thinkyeah/smartlock/AddAppActivity;)Lcom/thinkyeah/smartlock/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/n;->c()V

    :goto_1
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/thinkyeah/smartlock/f;->a:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/f;->b:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->i(Lcom/thinkyeah/smartlock/AddAppActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/f;->b:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->g(Lcom/thinkyeah/smartlock/AddAppActivity;)Lcom/thinkyeah/smartlock/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/n;->d()V

    goto :goto_1
.end method
