.class Lkr/co/medinbiz/widget/ultra/VidioListView$2;
.super Ljava/lang/Object;
.source "VidioListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/VidioListView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/VideoList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/VidioListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 106
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$3(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    #setter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPosition:I
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$10(Lkr/co/medinbiz/widget/ultra/VidioListView;I)V

    .line 108
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mMNum:Ljava/lang/String;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$11(Lkr/co/medinbiz/widget/ultra/VidioListView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPage:I
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$2(Lkr/co/medinbiz/widget/ultra/VidioListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    #setter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mCurrentPage:I
    invoke-static {v2, v3}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$12(Lkr/co/medinbiz/widget/ultra/VidioListView;I)V

    #calls: Lkr/co/medinbiz/widget/ultra/VidioListView;->getVideoList(Ljava/lang/String;I)V
    invoke-static {v0, v1, v3}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$13(Lkr/co/medinbiz/widget/ultra/VidioListView;Ljava/lang/String;I)V

    .line 110
    return-void
.end method
