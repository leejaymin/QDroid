.class Lelectrum2/drums/mixer$1;
.super Ljava/lang/Object;
.source "mixer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lelectrum2/drums/mixer$1;->this$0:Lelectrum2/drums/mixer;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 212
    iget-object v0, p0, Lelectrum2/drums/mixer$1;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->currentsound:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/mixer$1;->this$0:Lelectrum2/drums/mixer;

    iget-object v1, v1, Lelectrum2/drums/mixer;->panslider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->SetPan(I)V

    .line 215
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 206
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 201
    return-void
.end method
