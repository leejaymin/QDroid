.class Lcom/rookiestudio/perfectviewer/TFileBrowser$19;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->SelectSort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 980
    rem-int/lit8 v0, p2, 0x4

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    .line 981
    div-int/lit8 v0, p2, 0x4

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    .line 982
    const-string v0, "FileBrowserSort"

    invoke-static {v0, p2}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 983
    const-string v0, "FileSortType"

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 984
    const-string v0, "FileSortDirection"

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 985
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 986
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$9(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 987
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v0

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->DoSort(II)V

    .line 988
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 995
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 996
    return-void

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$9(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 990
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$14(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TPDFList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v0

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFileList;->DoSort(II)V

    .line 993
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
