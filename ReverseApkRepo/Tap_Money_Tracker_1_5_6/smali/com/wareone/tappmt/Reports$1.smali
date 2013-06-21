.class Lcom/wareone/tappmt/Reports$1;
.super Ljava/lang/Object;
.source "Reports.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Reports;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/wareone/tappmt/Reports;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Reports;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Reports$1;->this$0:Lcom/wareone/tappmt/Reports;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "vw"
    .parameter "pos"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v5, "id"

    .line 203
    invoke-static {}, Lcom/wareone/tappmt/Reports;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "item id ---> "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wareone/tappmt/Reports$1;->this$0:Lcom/wareone/tappmt/Reports;

    #getter for: Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/Reports;->access$1(Lcom/wareone/tappmt/Reports;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/wareone/tappmt/Reports$1;->this$0:Lcom/wareone/tappmt/Reports;

    #getter for: Lcom/wareone/tappmt/Reports;->m_type_index:I
    invoke-static {v1}, Lcom/wareone/tappmt/Reports;->access$2(Lcom/wareone/tappmt/Reports;)I

    move-result v1

    if-lez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/wareone/tappmt/Reports$1;->this$0:Lcom/wareone/tappmt/Reports;

    #getter for: Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/Reports;->access$1(Lcom/wareone/tappmt/Reports;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "level"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/Reports$1;->this$0:Lcom/wareone/tappmt/Reports;

    const-class v2, Lcom/wareone/tappmt/ViewItems;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, it:Landroid/content/Intent;
    const-string v1, "RANGE"

    iget-object v2, p0, Lcom/wareone/tappmt/Reports$1;->this$0:Lcom/wareone/tappmt/Reports;

    #getter for: Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wareone/tappmt/Reports;->access$3(Lcom/wareone/tappmt/Reports;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "GROUPBY"

    iget-object v2, p0, Lcom/wareone/tappmt/Reports$1;->this$0:Lcom/wareone/tappmt/Reports;

    #getter for: Lcom/wareone/tappmt/Reports;->m_group_index:I
    invoke-static {v2}, Lcom/wareone/tappmt/Reports;->access$4(Lcom/wareone/tappmt/Reports;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v2, "KEY"

    iget-object v1, p0, Lcom/wareone/tappmt/Reports$1;->this$0:Lcom/wareone/tappmt/Reports;

    #getter for: Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/Reports;->access$1(Lcom/wareone/tappmt/Reports;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "id"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/wareone/tappmt/Reports$1;->this$0:Lcom/wareone/tappmt/Reports;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/Reports;->startActivity(Landroid/content/Intent;)V

    .line 215
    .end local v0           #it:Landroid/content/Intent;
    :cond_0
    return-void
.end method
