.class Lcom/fleapapa/helper/CallMan$19;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

.field private final synthetic val$call:Lcom/fleapapa/helper/CallPapa$Call;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$19;->this$0:Lcom/fleapapa/helper/CallMan;

    iput-object p2, p0, Lcom/fleapapa/helper/CallMan$19;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 605
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
    const/4 v4, 0x1

    .line 607
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$19;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, v1, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 617
    :goto_0
    return v1

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$19;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan$19;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v2, v2, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallPapa$Call;->sendText(Ljava/lang/String;)Lcom/fleapapa/helper/CallPapa$Burst;

    move-result-object v0

    .line 610
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$19;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, v1, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    const v2, 0x7f0600d8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 611
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$19;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, v1, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 613
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$19;->this$0:Lcom/fleapapa/helper/CallMan;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallMan;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 614
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$19;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, v1, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setVisibility(I)V

    .line 616
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$19;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/CallMan;->delayRxReport(Lcom/fleapapa/helper/CallPapa$Burst;)V

    move v1, v4

    .line 617
    goto :goto_0
.end method
