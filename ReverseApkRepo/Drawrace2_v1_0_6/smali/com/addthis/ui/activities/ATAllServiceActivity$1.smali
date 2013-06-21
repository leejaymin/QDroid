.class Lcom/addthis/ui/activities/ATAllServiceActivity$1;
.super Ljava/lang/Object;
.source "ATAllServiceActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addthis/ui/activities/ATAllServiceActivity;->updateListView(Lcom/addthis/models/ATServiceList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/ui/activities/ATAllServiceActivity;


# direct methods
.method constructor <init>(Lcom/addthis/ui/activities/ATAllServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/addthis/ui/activities/ATAllServiceActivity$1;->this$0:Lcom/addthis/ui/activities/ATAllServiceActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/addthis/ui/activities/ATAllServiceActivity$1;->this$0:Lcom/addthis/ui/activities/ATAllServiceActivity;

    iget-object v0, v0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mAdapater:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/addthis/ui/activities/ATAllServiceActivity$1;->this$0:Lcom/addthis/ui/activities/ATAllServiceActivity;

    iget-object v0, v0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mAdapater:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 101
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 106
    return-void
.end method
