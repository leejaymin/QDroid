.class Lcom/rookiestudio/perfectviewer/TFileBrowser$21;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->DoRequirePassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

.field private final synthetic val$SelectArchive:Ljava/lang/String;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$21;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$21;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$21;->val$SelectArchive:Ljava/lang/String;

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1203
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$21;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, value:Ljava/lang/String;
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ArchivePasswordList:Lcom/rookiestudio/perfectviewer/TArchivePasswordList;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$21;->val$SelectArchive:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$21;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$21;->val$SelectArchive:Ljava/lang/String;

    #calls: Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$1(Lcom/rookiestudio/perfectviewer/TFileBrowser;Ljava/lang/String;)V

    .line 1206
    return-void
.end method
