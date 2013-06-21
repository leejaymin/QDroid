.class Lcom/rookiestudio/perfectviewer/TFileBrowser$5;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->SelectLocation()V
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
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$5;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$5;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$15(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 703
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$5;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetLocation(IZ)V

    .line 705
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 706
    return-void
.end method
