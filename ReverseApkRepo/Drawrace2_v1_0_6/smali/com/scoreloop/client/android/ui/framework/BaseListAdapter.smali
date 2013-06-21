.class public Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static _viewTypeCount:I


# instance fields
.field protected _listItemClickListener:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->_viewTypeCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 46
    return-void
.end method

.method public static setViewTypeCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 39
    sput p0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->_viewTypeCount:I

    .line 40
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 50
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    invoke-virtual {v0, p2, p3}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 60
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<TT;>;"
    sget v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->_viewTypeCount:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 65
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 69
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<TT;>;"
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->_listItemClickListener:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->_listItemClickListener:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;

    invoke-virtual {p0, p3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    invoke-interface {v1, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;->onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setOnListItemClickListener(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<TT;>;"
    .local p1, listener:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener<TT;>;"
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->_listItemClickListener:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;

    .line 76
    return-void
.end method
