.class Lcom/magmamobile/mmusia/activities/MMUSIAActivity$2;
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
    iput-object p1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$2;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    .line 125
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
    .line 128
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$2;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    #getter for: Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListNewsList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->access$2(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/magmamobile/mmusia/adapters/NewsListAdapterEx;

    invoke-virtual {v1, p3}, Lcom/magmamobile/mmusia/adapters/NewsListAdapterEx;->getItem(I)Lcom/magmamobile/mmusia/parser/data/ItemNews;

    move-result-object v0

    .line 129
    .local v0, item:Lcom/magmamobile/mmusia/parser/data/ItemNews;
    iget-object v1, v0, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsUrlMarket:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$2;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget-object v2, v0, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsUrlMarket:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/magmamobile/mmusia/MCommon;->openMarketLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$2;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget-object v2, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$2;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget v3, v0, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsID:I

    invoke-virtual {v1, v2, v3}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->lNews(Landroid/content/Context;I)V

    .line 136
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$2;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget-object v2, v0, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsUrlLink:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/magmamobile/mmusia/MCommon;->openUrlPage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
