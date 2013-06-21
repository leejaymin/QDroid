.class Lcom/rookiestudio/perfectviewer/TFileBrowser$2;
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

.field private final synthetic val$Parent:Landroid/app/Activity;

.field private final synthetic val$SelectedIndex:I

.field private final synthetic val$qa:Lnet/londatiga/android/QuickAction;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lnet/londatiga/android/QuickAction;Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;->val$qa:Lnet/londatiga/android/QuickAction;

    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;->val$Parent:Landroid/app/Activity;

    iput p4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;->val$SelectedIndex:I

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;->val$qa:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0}, Lnet/londatiga/android/QuickAction;->dismiss()V

    .line 521
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;->val$Parent:Landroid/app/Activity;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;->val$SelectedIndex:I

    #calls: Lcom/rookiestudio/perfectviewer/TFileBrowser;->EditServer(Landroid/app/Activity;I)V
    invoke-static {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$23(Lcom/rookiestudio/perfectviewer/TFileBrowser;Landroid/app/Activity;I)V

    .line 522
    return-void
.end method
