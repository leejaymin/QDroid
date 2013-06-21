.class Lelectrum2/drums/mixer$6;
.super Ljava/lang/Object;
.source "mixer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lelectrum2/drums/mixer$6;->this$0:Lelectrum2/drums/mixer;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 370
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->getTrackMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setTrackMute(Z)V

    .line 373
    iget-object v0, p0, Lelectrum2/drums/mixer$6;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->mutebutton5:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 380
    :goto_0
    sget-object v0, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->ShowSoundMutes()V

    .line 381
    return-void

    .line 376
    :cond_0
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lelectrum2/drums/soundObj;->setTrackMute(Z)V

    .line 377
    iget-object v0, p0, Lelectrum2/drums/mixer$6;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->mutebutton5:Landroid/widget/Button;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
