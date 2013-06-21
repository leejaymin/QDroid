.class Lcom/wareone/tappmt/TapPMT$3;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
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
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/TapPMT$3;)Lcom/wareone/tappmt/TapPMT;
    .locals 1
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;

    return-object v0
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
    .line 314
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;

    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$6(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;

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

    #setter for: Lcom/wareone/tappmt/TapPMT;->m_id:J
    invoke-static {v1, v2, v3}, Lcom/wareone/tappmt/TapPMT;->access$8(Lcom/wareone/tappmt/TapPMT;J)V

    .line 315
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;

    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$6(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;

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

    #setter for: Lcom/wareone/tappmt/TapPMT;->m_remote_id:J
    invoke-static {v1, v2, v3}, Lcom/wareone/tappmt/TapPMT;->access$9(Lcom/wareone/tappmt/TapPMT;J)V

    .line 316
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 318
    const v1, 0x7f09004e

    .line 319
    new-instance v2, Lcom/wareone/tappmt/TapPMT$3$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/TapPMT$3$1;-><init>(Lcom/wareone/tappmt/TapPMT$3;)V

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 330
    const v1, 0x7f09004f

    .line 331
    new-instance v2, Lcom/wareone/tappmt/TapPMT$3$2;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/TapPMT$3$2;-><init>(Lcom/wareone/tappmt/TapPMT$3;)V

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 339
    const/4 v0, 0x1

    return v0
.end method
