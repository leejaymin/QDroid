.class Lcom/wareone/tappmt/Template$2;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Template;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Template;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Template;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Template$2;->this$0:Lcom/wareone/tappmt/Template;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/wareone/tappmt/Template$2;->this$0:Lcom/wareone/tappmt/Template;

    iget-object v0, p0, Lcom/wareone/tappmt/Template$2;->this$0:Lcom/wareone/tappmt/Template;

    #getter for: Lcom/wareone/tappmt/Template;->m_data:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/Template;->access$0(Lcom/wareone/tappmt/Template;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    #setter for: Lcom/wareone/tappmt/Template;->m_id:J
    invoke-static {v1, v2, v3}, Lcom/wareone/tappmt/Template;->access$2(Lcom/wareone/tappmt/Template;J)V

    .line 159
    iget-object v1, p0, Lcom/wareone/tappmt/Template$2;->this$0:Lcom/wareone/tappmt/Template;

    iget-object v0, p0, Lcom/wareone/tappmt/Template$2;->this$0:Lcom/wareone/tappmt/Template;

    #getter for: Lcom/wareone/tappmt/Template;->m_data:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/Template;->access$0(Lcom/wareone/tappmt/Template;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "remote_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    #setter for: Lcom/wareone/tappmt/Template;->m_remote_id:J
    invoke-static {v1, v2, v3}, Lcom/wareone/tappmt/Template;->access$3(Lcom/wareone/tappmt/Template;J)V

    .line 162
    iget-object v0, p0, Lcom/wareone/tappmt/Template$2;->this$0:Lcom/wareone/tappmt/Template;

    #calls: Lcom/wareone/tappmt/Template;->_delete()V
    invoke-static {v0}, Lcom/wareone/tappmt/Template;->access$4(Lcom/wareone/tappmt/Template;)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method
