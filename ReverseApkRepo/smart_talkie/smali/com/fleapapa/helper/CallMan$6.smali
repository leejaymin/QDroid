.class Lcom/fleapapa/helper/CallMan$6;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$6;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 239
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$6;->this$0:Lcom/fleapapa/helper/CallMan;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallMan;->hideTitleBox(Z)V

    .line 240
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$6;->this$0:Lcom/fleapapa/helper/CallMan;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallMan;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 241
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v0, v1, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    .line 242
    .local v0, otitle:Ljava/lang/String;
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$6;->this$0:Lcom/fleapapa/helper/CallMan;

    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallMan;->setTitle(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 245
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$6;->this$0:Lcom/fleapapa/helper/CallMan;

    sget-object v2, Lcom/fleapapa/helper/CallMan;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-static {v1, v2, v3}, Lcom/fleapapa/helper/CallMan;->invite(Landroid/content/Context;Landroid/os/Handler;Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 246
    :cond_0
    return v4
.end method
