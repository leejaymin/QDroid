.class Lcom/feelingk/iap/gui/parser/ParserXML$6;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$6;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 3710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 3713
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$6;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 3714
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$6;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$9(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;->onAutoPurchaseFormDialogButtonClick(Z)V

    .line 3718
    :goto_0
    return-void

    .line 3716
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$6;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$9(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;->onAutoPurchaseFormDialogButtonClick(Z)V

    goto :goto_0
.end method
