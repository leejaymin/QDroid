.class Lcom/fleapapa/helper/CallMan$20;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->gotoCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$20;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 622
    if-eqz p2, :cond_1

    .line 624
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$20;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$20;->this$0:Lcom/fleapapa/helper/CallMan;

    const v2, 0x7f0600d7

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$20;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$20;->this$0:Lcom/fleapapa/helper/CallMan;

    const v2, 0x7f0600d8

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    .end local p0
    :goto_0
    return-void

    .line 627
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$20;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$20;->this$0:Lcom/fleapapa/helper/CallMan;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallMan;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
