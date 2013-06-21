.class final Lcom/thinkyeah/smartlock/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/AddAppActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/d;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/d;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->c(Lcom/thinkyeah/smartlock/AddAppActivity;)[Z

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/d;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->c(Lcom/thinkyeah/smartlock/AddAppActivity;)[Z

    move-result-object v0

    array-length v0, v0

    if-lt v1, v0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "IntentSelectedApp"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/d;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/d;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/d;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->c(Lcom/thinkyeah/smartlock/AddAppActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/d;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/d;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/thinkyeah/smartlock/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
