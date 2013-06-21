.class Lcom/magmamobile/mmusia/activities/MMUSIAActivity$3;
.super Ljava/lang/Object;
.source "MMUSIAActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;


# direct methods
.method constructor <init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$3;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 142
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$3;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    #getter for: Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListAppUpdate:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->access$3(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;

    invoke-virtual {v1, p3}, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->getItem(I)Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    move-result-object v0

    .line 143
    .local v0, item:Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;
    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$3;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget-object v2, v0, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->MarketLink:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/magmamobile/mmusia/MCommon;->openMarketLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$3;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget-object v2, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$3;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget-object v3, v0, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->PackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->lUpdate(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    return-void
.end method
