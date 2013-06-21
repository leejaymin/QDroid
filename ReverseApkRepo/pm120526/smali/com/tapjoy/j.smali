.class final Lcom/tapjoy/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/h;


# direct methods
.method constructor <init>(Lcom/tapjoy/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/j;->a:Lcom/tapjoy/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "VirtualGoodUtil"

    const-string v1, "retryClick"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tapjoy/j;->a:Lcom/tapjoy/h;

    invoke-static {v1}, Lcom/tapjoy/h;->a(Lcom/tapjoy/h;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "vg_row_index"

    const-string v3, "id"

    iget-object v4, p0, Lcom/tapjoy/j;->a:Lcom/tapjoy/h;

    invoke-static {v4}, Lcom/tapjoy/h;->b(Lcom/tapjoy/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "VirtualGoodUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retry index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/j;->a:Lcom/tapjoy/h;

    iget-object v2, p0, Lcom/tapjoy/j;->a:Lcom/tapjoy/h;

    iget-object v2, v2, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/j;->a:Lcom/tapjoy/h;

    invoke-static {v3}, Lcom/tapjoy/h;->c(Lcom/tapjoy/h;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/cc;

    invoke-virtual {p0}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/n;

    invoke-virtual {v1, p0}, Lcom/tapjoy/h;->a(Lcom/tapjoy/n;)V

    return-void
.end method
