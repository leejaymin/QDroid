.class Lelectrum2/drums/mixer$19;
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
    iput-object p1, p0, Lelectrum2/drums/mixer$19;->this$0:Lelectrum2/drums/mixer;

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "m"

    .prologue
    .line 657
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 659
    iget-object v0, p0, Lelectrum2/drums/mixer$19;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control9:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0}, Lelectrum2/drums/fadercontrol;->GetVolume()F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, Lelectrum2/drums/globalSounds;->globalVolume:D

    .line 662
    const/4 v0, 0x1

    return v0
.end method
