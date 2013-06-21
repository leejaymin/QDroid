.class Lcom/fleapapa/helper/CallGrps$1;
.super Ljava/lang/Object;
.source "CallGrps.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallGrps;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/fleapapa/helper/CallGrps;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallGrps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallGrps$1;->this$0:Lcom/fleapapa/helper/CallGrps;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps$1;->this$0:Lcom/fleapapa/helper/CallGrps;

    iget-object v2, v2, Lcom/fleapapa/helper/CallGrps;->gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    invoke-virtual {v2, p3}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Group;

    .line 74
    .local v0, g:Lcom/fleapapa/helper/Group;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps$1;->this$0:Lcom/fleapapa/helper/CallGrps;

    const-class v3, Lcom/fleapapa/helper/CallUes;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "cid"

    iget-object v3, p0, Lcom/fleapapa/helper/CallGrps$1;->this$0:Lcom/fleapapa/helper/CallGrps;

    iget v3, v3, Lcom/fleapapa/helper/CallGrps;->cid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v2, "group"

    iget-object v3, v0, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps$1;->this$0:Lcom/fleapapa/helper/CallGrps;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/fleapapa/helper/CallGrps;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    return-void
.end method
