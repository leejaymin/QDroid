.class Lcom/rookiestudio/perfectviewer/TViewerMain$14;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->AskRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$14;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$14;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->DoRestart(I)V

    .line 1413
    return-void
.end method
