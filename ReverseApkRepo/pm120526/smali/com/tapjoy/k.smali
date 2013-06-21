.class final Lcom/tapjoy/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/h;


# direct methods
.method constructor <init>(Lcom/tapjoy/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "VirtualGoodUtil"

    const-string v1, "RETRY DETAIL CLICK"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/h;

    iget-object v1, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/h;

    iget-object v1, v1, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/h;

    invoke-static {v2}, Lcom/tapjoy/h;->c(Lcom/tapjoy/h;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/k;->a:Lcom/tapjoy/h;

    iget v3, v3, Lcom/tapjoy/h;->d:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/cc;

    invoke-virtual {p0}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/n;

    invoke-virtual {v0, p0}, Lcom/tapjoy/h;->a(Lcom/tapjoy/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VirtualGoodUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RETRY DETAIl EXCEPTION: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
