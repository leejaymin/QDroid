.class Lelectrum2/drums/drumsettings$12;
.super Ljava/lang/Object;
.source "drumsettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/drumsettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/drumsettings;


# direct methods
.method constructor <init>(Lelectrum2/drums/drumsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/drumsettings$12;->this$0:Lelectrum2/drums/drumsettings;

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 837
    :try_start_0
    sget-boolean v0, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-nez v0, :cond_1

    .line 840
    iget-object v0, p0, Lelectrum2/drums/drumsettings$12;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v0, v0, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lelectrum2/drums/drumsettings$12;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v0, v0, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 843
    iget-object v0, p0, Lelectrum2/drums/drumsettings$12;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v0, v0, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 848
    :cond_0
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 850
    .local v7, buffersize:I
    iget-object v8, p0, Lelectrum2/drums/drumsettings$12;->this$0:Lelectrum2/drums/drumsettings;

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, v8, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;

    .line 852
    iget-object v0, p0, Lelectrum2/drums/drumsettings$12;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v0, v0, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 856
    iget-object v0, p0, Lelectrum2/drums/drumsettings$12;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v0, v0, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    .end local v7           #buffersize:I
    :cond_1
    :goto_0
    return-void

    .line 859
    :catch_0
    move-exception v0

    goto :goto_0
.end method
