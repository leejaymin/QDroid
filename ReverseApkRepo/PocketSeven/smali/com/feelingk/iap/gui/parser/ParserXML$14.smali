.class Lcom/feelingk/iap/gui/parser/ParserXML$14;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 3861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 3866
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 3868
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$5(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    move-result-object v0

    const-string v1, "join"

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;->onJoinDialogOKButtonClick(Ljava/lang/String;)V

    .line 3870
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x3

    new-array v1, v1, [Z

    #setter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$19(Lcom/feelingk/iap/gui/parser/ParserXML;[Z)V

    .line 3874
    :goto_0
    return-void

    .line 3873
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$5(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;->onJoinDialogOKButtonClick(Ljava/lang/String;)V

    goto :goto_0
.end method
