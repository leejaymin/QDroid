.class Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;->this$1:Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;->val$input:Landroid/widget/EditText;

    .line 1525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1527
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1528
    .local v0, value:Ljava/lang/String;
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ArchivePasswordList:Lcom/rookiestudio/perfectviewer/TArchivePasswordList;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;->this$1:Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;

    #getter for: Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->SelectArchive:Ljava/lang/String;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->access$0(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;->this$1:Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;

    #getter for: Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->access$2(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;)Lcom/rookiestudio/perfectviewer/TViewerMain;

    move-result-object v1

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;->this$1:Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;

    #getter for: Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->SelectArchive:Ljava/lang/String;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->access$0(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;->this$1:Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;

    #getter for: Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->SelectFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->access$1(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->FileSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    return-void
.end method
