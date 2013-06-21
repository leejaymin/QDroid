.class Lelectrum2/drums/mixer$10;
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
    iput-object p1, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/high16 v2, 0x3f80

    .line 448
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v0, v2}, Lelectrum2/drums/soundObj;->SetVolume(F)V

    .line 449
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v0, v2}, Lelectrum2/drums/soundObj;->SetVolume(F)V

    .line 450
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v0, v2}, Lelectrum2/drums/soundObj;->SetVolume(F)V

    .line 451
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v0, v2}, Lelectrum2/drums/soundObj;->SetVolume(F)V

    .line 452
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v0, v2}, Lelectrum2/drums/soundObj;->SetVolume(F)V

    .line 453
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v0, v2}, Lelectrum2/drums/soundObj;->SetVolume(F)V

    .line 454
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v0, v2}, Lelectrum2/drums/soundObj;->SetVolume(F)V

    .line 455
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v0, v2}, Lelectrum2/drums/soundObj;->SetVolume(F)V

    .line 457
    const-wide/high16 v0, 0x3ff0

    sput-wide v0, Lelectrum2/drums/globalSounds;->globalVolume:D

    .line 459
    iget-object v0, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control1:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 460
    iget-object v0, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control2:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 461
    iget-object v0, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control3:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 462
    iget-object v0, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control4:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 463
    iget-object v0, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control5:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 464
    iget-object v0, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control6:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 465
    iget-object v0, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control7:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 466
    iget-object v0, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control8:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 467
    iget-object v0, p0, Lelectrum2/drums/mixer$10;->this$0:Lelectrum2/drums/mixer;

    iget-object v0, v0, Lelectrum2/drums/mixer;->control9:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 469
    return-void
.end method
