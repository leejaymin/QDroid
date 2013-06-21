.class Lelectrum2/drums/livemode$6;
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
    iput-object p1, p0, Lelectrum2/drums/livemode$6;->this$0:Lelectrum2/drums/livemode;

    .line 745
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

    .line 748
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 754
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 757
    iget-object v0, p0, Lelectrum2/drums/livemode$6;->this$0:Lelectrum2/drums/livemode;

    iget-boolean v0, v0, Lelectrum2/drums/livemode;->isRecording:Z

    if-nez v0, :cond_1

    .line 759
    iget-object v0, p0, Lelectrum2/drums/livemode$6;->this$0:Lelectrum2/drums/livemode;

    iput-boolean v2, v0, Lelectrum2/drums/livemode;->isRecording:Z

    .line 760
    iget-object v0, p0, Lelectrum2/drums/livemode$6;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->recordbutton:Landroid/widget/ImageView;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 773
    :cond_0
    :goto_0
    return v2

    .line 764
    :cond_1
    iget-object v0, p0, Lelectrum2/drums/livemode$6;->this$0:Lelectrum2/drums/livemode;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lelectrum2/drums/livemode;->isRecording:Z

    .line 766
    iget-object v0, p0, Lelectrum2/drums/livemode$6;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->recordbutton:Landroid/widget/ImageView;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
