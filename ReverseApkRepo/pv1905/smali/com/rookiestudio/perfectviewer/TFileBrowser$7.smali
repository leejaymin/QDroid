.class Lcom/rookiestudio/perfectviewer/TFileBrowser$7;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->AddServer()V
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


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->val$ServerEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->val$UserEdit:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->val$PassEdit:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->val$DescEdit:Landroid/widget/EditText;

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 731
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->val$ServerEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, ServerName:Ljava/lang/String;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->val$UserEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, ServerUser:Ljava/lang/String;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->val$PassEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, ServerPass:Ljava/lang/String;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->val$DescEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, ServerDesc:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 736
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$16(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TServerList;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v3, v2}, Lcom/rookiestudio/perfectviewer/TServerList;->AddServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$16(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TServerList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TServerList;->SaveServerList()V

    .line 738
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 739
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FolderRefresh()V

    .line 741
    :cond_0
    return-void
.end method
