.class Lcom/ui/LapseIt/list/ListView$1;
.super Landroid/database/DataSetObserver;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/list/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/list/ListView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/list/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    .line 235
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    #getter for: Lcom/ui/LapseIt/list/ListView;->headerText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListView;->access$0(Lcom/ui/LapseIt/list/ListView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :goto_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 251
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 241
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, headerTitle:Ljava/lang/String;
    const-string v1, "XXX"

    iget-object v2, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    #getter for: Lcom/ui/LapseIt/list/ListView;->headerText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListView;->access$0(Lcom/ui/LapseIt/list/ListView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    .end local v0           #headerTitle:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .restart local v0       #headerTitle:Ljava/lang/String;
    const-string v1, "XXX"

    iget-object v2, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/list/ListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListView$1;->this$0:Lcom/ui/LapseIt/list/ListView;

    #getter for: Lcom/ui/LapseIt/list/ListView;->headerText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListView;->access$0(Lcom/ui/LapseIt/list/ListView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 256
    return-void
.end method
