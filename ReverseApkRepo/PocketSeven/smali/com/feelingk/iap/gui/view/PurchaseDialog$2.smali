.class Lcom/feelingk/iap/gui/view/PurchaseDialog$2;
.super Ljava/lang/Object;
.source "PurchaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PurchaseDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PurchaseDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PurchaseDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog$2;->this$0:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog$2;->this$0:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    #getter for: Lcom/feelingk/iap/gui/view/PurchaseDialog;->mRetCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->access$0(Lcom/feelingk/iap/gui/view/PurchaseDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseCancelButtonClick()V

    .line 62
    return-void
.end method
