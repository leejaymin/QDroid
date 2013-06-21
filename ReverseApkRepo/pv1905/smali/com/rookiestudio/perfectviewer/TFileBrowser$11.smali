.class Lcom/rookiestudio/perfectviewer/TFileBrowser$11;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->DeleteServer(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

.field private final synthetic val$TargetIndex:I


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$11;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iput p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$11;->val$TargetIndex:I

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$11;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$16(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TServerList;

    move-result-object v0

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$11;->val$TargetIndex:I

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TServerList;->DeleteServer(I)V

    .line 806
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$11;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$16(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TServerList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TServerList;->SaveServerList()V

    .line 807
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$11;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 808
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$11;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FolderRefresh()V

    .line 809
    return-void
.end method
