.class Lcom/wareone/tappmt/TapPMT$2;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$2;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 300
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v4, "_id"

    .line 302
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$2;->this$0:Lcom/wareone/tappmt/TapPMT;

    const-class v2, Lcom/wareone/tappmt/Transaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, it:Landroid/content/Intent;
    const-string v1, "ACTION"

    const v2, 0x7f09005c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const-string v2, "MODE"

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$2;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/TapPMT;->access$6(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "mode"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v1, "_id"

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$2;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/TapPMT;->access$6(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "_id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$2;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/TapPMT;->startActivity(Landroid/content/Intent;)V

    .line 308
    invoke-static {}, Lcom/wareone/tappmt/TapPMT;->access$7()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Edit Transaction"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method
