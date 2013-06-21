.class Lcom/feelingk/iap/gui/parser/ParserXML$25;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;->createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->UseTCash(Ljava/lang/Boolean;)V

    .line 995
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$20(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onUseTCashCheckChanged(Z)V

    .line 997
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getLimitExcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mOkBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$29(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mOkDrawbles:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$30(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 999
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 1000
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mOkBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$29(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iget-object v1, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    if-nez p2, :cond_0

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getLimitExcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mOkBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$29(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessDrawables:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$31(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 1005
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$25;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mOkBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$29(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
