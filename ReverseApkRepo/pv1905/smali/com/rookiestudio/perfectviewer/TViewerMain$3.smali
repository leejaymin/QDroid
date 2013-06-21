.class Lcom/rookiestudio/perfectviewer/TViewerMain$3;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->SetRegionFunction(I)V
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
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$3;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 662
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 663
    return-void
.end method
