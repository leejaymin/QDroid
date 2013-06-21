.class Lcom/fleapapa/helper/ItemEdit$Xpinner;
.super Landroid/widget/Spinner;
.source "ItemEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/ItemEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Xpinner"
.end annotation


# instance fields
.field dropdown:Z

.field navigating:Z

.field obsoleted:Z

.field position:I

.field final synthetic this$0:Lcom/fleapapa/helper/ItemEdit;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/ItemEdit;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->this$0:Lcom/fleapapa/helper/ItemEdit;

    .line 736
    invoke-direct {p0, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 771
    packed-switch p1, :pswitch_data_0

    .line 783
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 779
    :pswitch_0
    iget-boolean v0, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dropdown:Z

    if-eqz v0, :cond_0

    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->navigating:Z

    goto :goto_0

    .line 771
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 787
    sparse-switch p1, :sswitch_data_0

    .line 813
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dropdown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iput-object p0, v0, Lcom/fleapapa/helper/ItemEdit;->dspin:Lcom/fleapapa/helper/ItemEdit$Xpinner;

    .line 814
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 791
    :sswitch_0
    iget-boolean v0, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dropdown:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dropdown:Z

    if-nez v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->getSelectedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->position:I

    if-eq v0, v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/ItemEdit;->relayout(Lcom/fleapapa/helper/Category;)V

    goto :goto_0

    .line 791
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 798
    :sswitch_1
    iput-boolean v1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dropdown:Z

    .line 800
    iget v0, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->position:I

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->setSelection(I)V

    goto :goto_0

    .line 809
    :sswitch_2
    iput-boolean v1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->navigating:Z

    goto :goto_0

    .line 787
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v2, 0x17

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 749
    .local v0, handled:Z
    iget-boolean v1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dropdown:Z

    if-nez v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemEdit;->dspin:Lcom/fleapapa/helper/ItemEdit$Xpinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemEdit;->dspin:Lcom/fleapapa/helper/ItemEdit$Xpinner;

    iget-boolean v1, v1, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dropdown:Z

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemEdit;->dspin:Lcom/fleapapa/helper/ItemEdit$Xpinner;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v3, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 756
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemEdit;->dspin:Lcom/fleapapa/helper/ItemEdit$Xpinner;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 763
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->requestFocus()Z

    .line 764
    return v0

    .line 760
    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 761
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public select(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 740
    iput p1, p0, Lcom/fleapapa/helper/ItemEdit$Xpinner;->position:I

    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->setSelection(I)V

    .line 741
    return-void
.end method
