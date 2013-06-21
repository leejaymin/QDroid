.class Lcom/feelingk/iap/gui/parser/ParserXML$26;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;->createViewOtpPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->val$editText:Landroid/widget/EditText;

    .line 3070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$32(Lcom/feelingk/iap/gui/parser/ParserXML;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->inputStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3092
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$24(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;->onOtpDialogOK()V

    .line 3103
    :cond_0
    :goto_0
    return-void

    .line 3096
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->inputStr:Ljava/lang/String;

    .line 3097
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->val$editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3098
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->val$editText:Landroid/widget/EditText;

    const-string v1, "\uc798\ubabb\ub41c \uc778\uc99d\ubc88\ud638\ub97c \uc785\ub825\ud558\uc168\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3082
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3074
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$26;->inputStr:Ljava/lang/String;

    .line 3076
    return-void
.end method
