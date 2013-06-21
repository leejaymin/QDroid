.class Lcom/superdroid/sqd/About$2;
.super Ljava/lang/Object;
.source "About.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/About;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/About;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/About;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/About$2;->this$0:Lcom/superdroid/sqd/About;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/superdroid/sqd/About$2;->this$0:Lcom/superdroid/sqd/About;

    #getter for: Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/superdroid/sqd/About;->access$0(Lcom/superdroid/sqd/About;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superdroid/sqd/About$Product;

    invoke-virtual {v3}, Lcom/superdroid/sqd/About$Product;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, packageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://search?q=pname:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 55
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    .local v0, it:Landroid/content/Intent;
    iget-object v3, p0, Lcom/superdroid/sqd/About$2;->this$0:Lcom/superdroid/sqd/About;

    invoke-virtual {v3, v0}, Lcom/superdroid/sqd/About;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
