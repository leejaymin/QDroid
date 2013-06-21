.class Lcom/cocmoc/kulinglite/StationSelector$1;
.super Ljava/lang/Object;
.source "StationSelector.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/StationSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/StationSelector;

.field private final synthetic val$AreaCountCharSequence:[Ljava/lang/CharSequence;

.field private final synthetic val$StationsCharSequenceId:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/StationSelector;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/StationSelector$1;->this$0:Lcom/cocmoc/kulinglite/StationSelector;

    iput-object p2, p0, Lcom/cocmoc/kulinglite/StationSelector$1;->val$StationsCharSequenceId:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/cocmoc/kulinglite/StationSelector$1;->val$AreaCountCharSequence:[Ljava/lang/CharSequence;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 7
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/cocmoc/kulinglite/StationSelector$1;->this$0:Lcom/cocmoc/kulinglite/StationSelector;

    #getter for: Lcom/cocmoc/kulinglite/StationSelector;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v2}, Lcom/cocmoc/kulinglite/StationSelector;->access$0(Lcom/cocmoc/kulinglite/StationSelector;)Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, select:Ljava/lang/String;
    iget-object v2, p0, Lcom/cocmoc/kulinglite/StationSelector$1;->val$StationsCharSequenceId:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/cocmoc/kulinglite/StationSelector$1;->this$0:Lcom/cocmoc/kulinglite/StationSelector;

    iget-object v4, p0, Lcom/cocmoc/kulinglite/StationSelector$1;->val$AreaCountCharSequence:[Ljava/lang/CharSequence;

    #calls: Lcom/cocmoc/kulinglite/StationSelector;->getNumber(II[Ljava/lang/CharSequence;)I
    invoke-static {v3, p3, p4, v4}, Lcom/cocmoc/kulinglite/StationSelector;->access$1(Lcom/cocmoc/kulinglite/StationSelector;II[Ljava/lang/CharSequence;)I

    move-result v3

    aget-object v1, v2, v3

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, selectId:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v2, "}"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/cocmoc/kulinglite/StationSelector$1;->this$0:Lcom/cocmoc/kulinglite/StationSelector;

    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cocmoc/kulinglite/StationSelector;->setResult(ILandroid/content/Intent;)V

    .line 98
    iget-object v2, p0, Lcom/cocmoc/kulinglite/StationSelector$1;->this$0:Lcom/cocmoc/kulinglite/StationSelector;

    invoke-virtual {v2}, Lcom/cocmoc/kulinglite/StationSelector;->finish()V

    .line 100
    const/4 v2, 0x0

    return v2
.end method
