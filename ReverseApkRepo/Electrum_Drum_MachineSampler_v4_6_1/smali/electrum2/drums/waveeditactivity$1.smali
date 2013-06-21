.class Lelectrum2/drums/waveeditactivity$1;
.super Ljava/lang/Object;
.source "waveeditactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/waveeditactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/waveeditactivity;


# direct methods
.method constructor <init>(Lelectrum2/drums/waveeditactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 105
    :try_start_0
    sget-boolean v0, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-nez v0, :cond_3

    .line 109
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v0, v0, Lelectrum2/drums/waveedit;->EndPoint:I

    iget-object v1, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v1, v1, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v1, v1, Lelectrum2/drums/waveedit;->StartPoint:I

    if-le v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 115
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 118
    :cond_0
    iget-object v7, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget-object v5, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v5, v5, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v5, v5, Lelectrum2/drums/waveedit;->EndPoint:I

    iget-object v6, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v6, v6, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v6, v6, Lelectrum2/drums/waveedit;->StartPoint:I

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, v7, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    .line 120
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    iget-object v2, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v2, v2, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v2, v2, Lelectrum2/drums/waveedit;->StartPoint:I

    iget-object v3, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v3, v3, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v3, v3, Lelectrum2/drums/waveedit;->EndPoint:I

    iget-object v4, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v4, v4, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v4, v4, Lelectrum2/drums/waveedit;->StartPoint:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([SII)I

    .line 122
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 124
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 148
    :goto_0
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v1, v1, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v1, v1, Lelectrum2/drums/waveedit;->StartPoint:I

    iput v1, v0, Lelectrum2/drums/soundObj;->startpos:I

    .line 149
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v1, v1, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v1, v1, Lelectrum2/drums/waveedit;->EndPoint:I

    iput v1, v0, Lelectrum2/drums/soundObj;->samplelen:I

    .line 173
    :goto_1
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 135
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 138
    :cond_2
    iget-object v7, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    sget-object v5, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v5, v5, Lelectrum2/drums/soundObj;->samplefulllen:I

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, v7, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    .line 140
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    const/4 v2, 0x0

    sget-object v3, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v3, v3, Lelectrum2/drums/soundObj;->samplefulllen:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([SII)I

    .line 142
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 144
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v0, v0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_1

    .line 158
    :cond_3
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v1, v1, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v1, v1, Lelectrum2/drums/waveedit;->StartPoint:I

    iput v1, v0, Lelectrum2/drums/soundObj;->startpos:I

    .line 159
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, p0, Lelectrum2/drums/waveeditactivity$1;->this$0:Lelectrum2/drums/waveeditactivity;

    iget-object v1, v1, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    iget v1, v1, Lelectrum2/drums/waveedit;->EndPoint:I

    iput v1, v0, Lelectrum2/drums/soundObj;->samplelen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 169
    :catch_1
    move-exception v0

    goto :goto_1
.end method
