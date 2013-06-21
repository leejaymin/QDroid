.class Lelectrum2/drums/distortionsettings$3;
.super Ljava/lang/Object;
.source "distortionsettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/distortionsettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/distortionsettings;


# direct methods
.method constructor <init>(Lelectrum2/drums/distortionsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/distortionsettings$3;->this$0:Lelectrum2/drums/distortionsettings;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 219
    iget-object v1, p0, Lelectrum2/drums/distortionsettings$3;->this$0:Lelectrum2/drums/distortionsettings;

    iget-object v1, v1, Lelectrum2/drums/distortionsettings;->bar1:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 221
    .local v0, newvalue:I
    iget-object v1, p0, Lelectrum2/drums/distortionsettings$3;->this$0:Lelectrum2/drums/distortionsettings;

    int-to-float v2, v0

    iput v2, v1, Lelectrum2/drums/distortionsettings;->threshold:F

    .line 224
    iget-object v1, p0, Lelectrum2/drums/distortionsettings$3;->this$0:Lelectrum2/drums/distortionsettings;

    #calls: Lelectrum2/drums/distortionsettings;->DoFx()V
    invoke-static {v1}, Lelectrum2/drums/distortionsettings;->access$1(Lelectrum2/drums/distortionsettings;)V

    .line 230
    .end local v0           #newvalue:I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
