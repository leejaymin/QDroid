.class Lcom/wareone/tappmt/Asset$1;
.super Ljava/lang/Object;
.source "Asset.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Asset;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/wareone/tappmt/Asset;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Asset;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Asset$1;->this$0:Lcom/wareone/tappmt/Asset;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Asset$1;)Lcom/wareone/tappmt/Asset;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wareone/tappmt/Asset$1;->this$0:Lcom/wareone/tappmt/Asset;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "v"
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
    .line 46
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/wareone/tappmt/Asset$1;->this$0:Lcom/wareone/tappmt/Asset;

    iget-object v1, p0, Lcom/wareone/tappmt/Asset$1;->this$0:Lcom/wareone/tappmt/Asset;

    #getter for: Lcom/wareone/tappmt/Asset;->m_data:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/Asset;->access$0(Lcom/wareone/tappmt/Asset;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    #setter for: Lcom/wareone/tappmt/Asset;->m_id:J
    invoke-static {v2, v3, v4}, Lcom/wareone/tappmt/Asset;->access$1(Lcom/wareone/tappmt/Asset;J)V

    .line 47
    iget-object v2, p0, Lcom/wareone/tappmt/Asset$1;->this$0:Lcom/wareone/tappmt/Asset;

    iget-object v1, p0, Lcom/wareone/tappmt/Asset$1;->this$0:Lcom/wareone/tappmt/Asset;

    #getter for: Lcom/wareone/tappmt/Asset;->m_data:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/Asset;->access$0(Lcom/wareone/tappmt/Asset;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "remote_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    #setter for: Lcom/wareone/tappmt/Asset;->m_remote_id:J
    invoke-static {v2, v3, v4}, Lcom/wareone/tappmt/Asset;->access$2(Lcom/wareone/tappmt/Asset;J)V

    .line 48
    iget-object v1, p0, Lcom/wareone/tappmt/Asset$1;->this$0:Lcom/wareone/tappmt/Asset;

    invoke-virtual {v1}, Lcom/wareone/tappmt/Asset;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, _actions:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wareone/tappmt/Asset$1;->this$0:Lcom/wareone/tappmt/Asset;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/wareone/tappmt/Asset$1$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Asset$1$1;-><init>(Lcom/wareone/tappmt/Asset$1;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 76
    const/4 v1, 0x1

    return v1
.end method
