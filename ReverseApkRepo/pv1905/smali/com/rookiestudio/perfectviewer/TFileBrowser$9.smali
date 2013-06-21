.class Lcom/rookiestudio/perfectviewer/TFileBrowser$9;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->EditServer(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

.field private final synthetic val$DescEdit:Landroid/widget/EditText;

.field private final synthetic val$PassEdit:Landroid/widget/EditText;

.field private final synthetic val$ServerEdit:Landroid/widget/EditText;

.field private final synthetic val$UserEdit:Landroid/widget/EditText;

.field private final synthetic val$aServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/rookiestudio/baseclass/TServerInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$ServerEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$UserEdit:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$PassEdit:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$DescEdit:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$aServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 771
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$ServerEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, ServerName:Ljava/lang/String;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$UserEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, ServerUser:Ljava/lang/String;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$PassEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, ServerPass:Ljava/lang/String;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$DescEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, ServerDesc:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 776
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$aServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;

    iput-object v1, v4, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    .line 777
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$aServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;

    iput-object v0, v4, Lcom/rookiestudio/baseclass/TServerInfo;->Description:Ljava/lang/String;

    .line 778
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$aServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;

    iput-object v3, v4, Lcom/rookiestudio/baseclass/TServerInfo;->UserName:Ljava/lang/String;

    .line 779
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->val$aServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;

    iput-object v2, v4, Lcom/rookiestudio/baseclass/TServerInfo;->Password:Ljava/lang/String;

    .line 780
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$16(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TServerList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TServerList;->SaveServerList()V

    .line 781
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 782
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FolderRefresh()V

    .line 784
    :cond_0
    return-void
.end method
