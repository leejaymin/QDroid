.class Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;
.super Ljava/lang/Object;
.source "payAuthDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->viewLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

.field private final synthetic val$otpAuthNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/feelingk/lguiab/manager/gui/payAuthDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;->this$0:Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

    iput-object p2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;->val$otpAuthNumber:Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;->val$otpAuthNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;->inputStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const-string v0, "otpAuthNumber \uc77c\uce58"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;->this$0:Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->authFlag:Z

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;->inputStr:Ljava/lang/String;

    .line 391
    const-string v0, "otpAuthNumber \ubd88\uc77c\uce58"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 376
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 368
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;->inputStr:Ljava/lang/String;

    .line 370
    return-void
.end method
