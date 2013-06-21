.class Lelectrum2/drums/mixer$14;
.super Ljava/lang/Object;
.source "mixer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/mixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/mixer;


# direct methods
.method constructor <init>(Lelectrum2/drums/mixer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/mixer$14;->this$0:Lelectrum2/drums/mixer;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "m"

    .prologue
    .line 551
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 553
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/mixer$14;->this$0:Lelectrum2/drums/mixer;

    iget-object v1, v1, Lelectrum2/drums/mixer;->control4:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v1}, Lelectrum2/drums/fadercontrol;->GetVolume()F

    move-result v1

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->SetVolume(F)V

    .line 555
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lelectrum2/drums/mixer$14;->this$0:Lelectrum2/drums/mixer;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iput-object v1, v0, Lelectrum2/drums/mixer;->currentsound:Lelectrum2/drums/soundObj;

    .line 559
    iget-object v0, p0, Lelectrum2/drums/mixer$14;->this$0:Lelectrum2/drums/mixer;

    #calls: Lelectrum2/drums/mixer;->AdjustPan()V
    invoke-static {v0}, Lelectrum2/drums/mixer;->access$0(Lelectrum2/drums/mixer;)V

    .line 561
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
