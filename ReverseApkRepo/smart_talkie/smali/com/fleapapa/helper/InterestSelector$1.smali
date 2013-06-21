.class Lcom/fleapapa/helper/InterestSelector$1;
.super Ljava/lang/Object;
.source "InterestSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/InterestSelector;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/fleapapa/helper/InterestSelector;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/InterestSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/InterestSelector$1;->this$0:Lcom/fleapapa/helper/InterestSelector;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector$1;->this$0:Lcom/fleapapa/helper/InterestSelector;

    iget-object v1, v1, Lcom/fleapapa/helper/InterestSelector;->lview:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 97
    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector$1;->this$0:Lcom/fleapapa/helper/InterestSelector;

    iget-object v1, v1, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v1, p3}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 98
    .local v0, cat:Lcom/fleapapa/helper/Category;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/InterestSelector$1;->this$0:Lcom/fleapapa/helper/InterestSelector;

    #getter for: Lcom/fleapapa/helper/InterestSelector;->WHO:Ljava/lang/String;
    invoke-static {v3}, Lcom/fleapapa/helper/InterestSelector;->access$0(Lcom/fleapapa/helper/InterestSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".options: selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v1, v0, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-nez v1, :cond_1

    .line 100
    iget-boolean v1, v0, Lcom/fleapapa/helper/Category;->expanded:Z

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector$1;->this$0:Lcom/fleapapa/helper/InterestSelector;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/InterestSelector;->collapse(Lcom/fleapapa/helper/Category;)V

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector$1;->this$0:Lcom/fleapapa/helper/InterestSelector;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/InterestSelector;->expand(Lcom/fleapapa/helper/Category;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector$1;->this$0:Lcom/fleapapa/helper/InterestSelector;

    const/4 v2, 0x0

    iget v3, v0, Lcom/fleapapa/helper/Category;->code:I

    invoke-virtual {v1, v2, v3}, Lcom/fleapapa/helper/InterestSelector;->listItems(Ljava/lang/String;I)V

    goto :goto_0
.end method
