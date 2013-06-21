.class Lcom/rookiestudio/perfectviewer/TFileBrowser$17;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->SelectView()V
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
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$17;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 954
    sput p2, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    .line 955
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$17;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewModeChanged()V

    .line 956
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 957
    return-void
.end method
