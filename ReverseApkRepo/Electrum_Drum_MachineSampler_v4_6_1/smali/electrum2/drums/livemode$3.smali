.class Lelectrum2/drums/livemode$3;
.super Ljava/lang/Object;
.source "livemode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/livemode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/livemode;


# direct methods
.method constructor <init>(Lelectrum2/drums/livemode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/livemode$3;->this$0:Lelectrum2/drums/livemode;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v2, 0x1

    .line 587
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lelectrum2/drums/livemode$3;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->insertbutton:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 598
    iget-object v0, p0, Lelectrum2/drums/livemode$3;->this$0:Lelectrum2/drums/livemode;

    iget-boolean v0, v0, Lelectrum2/drums/livemode;->InsertMode:Z

    if-nez v0, :cond_2

    .line 600
    iget-object v0, p0, Lelectrum2/drums/livemode$3;->this$0:Lelectrum2/drums/livemode;

    iput-boolean v2, v0, Lelectrum2/drums/livemode;->InsertMode:Z

    .line 612
    :cond_1
    :goto_0
    return v2

    .line 603
    :cond_2
    iget-object v0, p0, Lelectrum2/drums/livemode$3;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->insertbutton:Landroid/widget/ImageView;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    iget-object v0, p0, Lelectrum2/drums/livemode$3;->this$0:Lelectrum2/drums/livemode;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lelectrum2/drums/livemode;->InsertMode:Z

    goto :goto_0
.end method
