.class Lcom/feelingk/iap/IAPActivity$25;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/IAPActivity;->popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$25;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$25;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$41(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->ClosePopupAutoPurchaseFormDialog()V

    .line 571
    return-void
.end method
