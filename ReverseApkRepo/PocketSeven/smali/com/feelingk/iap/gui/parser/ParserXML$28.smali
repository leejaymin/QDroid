.class Lcom/feelingk/iap/gui/parser/ParserXML$28;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;->createViewLguSmsAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$28;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 3235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    const/4 v1, 0x6

    .line 3252
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$28;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3253
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$33(Ljava/lang/Boolean;)V

    .line 3255
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$34()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$28;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3256
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$33(Ljava/lang/Boolean;)V

    .line 3257
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$28;->inputStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    .line 3260
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3247
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3239
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$28;->inputStr:Ljava/lang/String;

    .line 3241
    return-void
.end method
