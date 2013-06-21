.class Lelectrum2/drums/delaysettings$4;
.super Ljava/lang/Object;
.source "delaysettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/delaysettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/delaysettings;


# direct methods
.method constructor <init>(Lelectrum2/drums/delaysettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/delaysettings$4;->this$0:Lelectrum2/drums/delaysettings;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 249
    iget-object v1, p0, Lelectrum2/drums/delaysettings$4;->this$0:Lelectrum2/drums/delaysettings;

    iget-object v1, v1, Lelectrum2/drums/delaysettings;->bar1:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float v0, v1, v2

    .line 251
    .local v0, newvalue:F
    float-to-double v1, v0

    const-wide v3, 0x3fee666666666666L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const v0, 0x3f733333

    .line 253
    :cond_0
    iget-object v1, p0, Lelectrum2/drums/delaysettings$4;->this$0:Lelectrum2/drums/delaysettings;

    iput v0, v1, Lelectrum2/drums/delaysettings;->feedback:F

    .line 255
    iget-object v1, p0, Lelectrum2/drums/delaysettings$4;->this$0:Lelectrum2/drums/delaysettings;

    #calls: Lelectrum2/drums/delaysettings;->DoFx()V
    invoke-static {v1}, Lelectrum2/drums/delaysettings;->access$0(Lelectrum2/drums/delaysettings;)V

    .line 263
    .end local v0           #newvalue:F
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
