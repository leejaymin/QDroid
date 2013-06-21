.class Lcom/rookiestudio/perfectviewer/TMainMenu$3;
.super Ljava/lang/Object;
.source "TMainMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TMainMenu;->DoDeleteData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

.field private final synthetic val$DataType:I

.field private final synthetic val$Index:I


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TMainMenu;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$3;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    iput p2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$3;->val$DataType:I

    iput p3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$3;->val$Index:I

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 721
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$3;->val$DataType:I

    if-nez v0, :cond_1

    .line 722
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$3;->val$Index:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 723
    invoke-static {}, Lcom/rookiestudio/perfectviewer/Config;->SaveHistories()V

    .line 724
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$3;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->HistoryData:Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$3(Lcom/rookiestudio/perfectviewer/TMainMenu;)Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;->notifyDataSetChanged()V

    .line 725
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$3;->val$DataType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 727
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->BookmarkList:Ljava/util/List;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$3;->val$Index:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 728
    invoke-static {}, Lcom/rookiestudio/perfectviewer/Config;->SaveBookmarks()V

    .line 729
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$3;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->BookmarkData:Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$4(Lcom/rookiestudio/perfectviewer/TMainMenu;)Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;->notifyDataSetChanged()V

    .line 730
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
