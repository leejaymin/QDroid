.class Lcom/rookiestudio/perfectviewer/TFileBrowser$18;
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
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$18;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 961
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 962
    return-void
.end method
