.class Lcom/rookiestudio/perfectviewer/TFileBrowser$4;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerOperation(Landroid/app/Activity;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

.field private final synthetic val$qa:Lnet/londatiga/android/QuickAction;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lnet/londatiga/android/QuickAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$4;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$4;->val$qa:Lnet/londatiga/android/QuickAction;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$4;->val$qa:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0}, Lnet/londatiga/android/QuickAction;->dismiss()V

    .line 541
    return-void
.end method
