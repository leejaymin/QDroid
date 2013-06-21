.class Lelectrum2/drums/recordactivity$1;
.super Ljava/lang/Object;
.source "recordactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/recordactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/recordactivity;


# direct methods
.method constructor <init>(Lelectrum2/drums/recordactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    iget-boolean v0, v0, Lelectrum2/drums/recordactivity;->isRecording:Z

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundbuffer:[S

    if-eqz v0, :cond_2

    .line 92
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundplayer:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundplayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 95
    iget-object v0, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundplayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 100
    :cond_0
    sget v0, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    mul-int/lit16 v7, v0, 0x5622

    .line 103
    .local v7, buffersize:I
    iget-object v10, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, v10, Lelectrum2/drums/recordactivity;->soundplayer:Landroid/media/AudioTrack;

    .line 105
    iget-object v0, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundplayer:Landroid/media/AudioTrack;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->soundbuffer:[S

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 109
    iget-object v0, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->soundplayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v7           #buffersize:I
    :cond_1
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v8

    .line 114
    .local v8, e:Ljava/lang/Exception;
    iget-object v0, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error during playback.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 118
    .local v9, temptoast:Landroid/widget/Toast;
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 125
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #temptoast:Landroid/widget/Toast;
    :cond_2
    iget-object v0, p0, Lelectrum2/drums/recordactivity$1;->this$0:Lelectrum2/drums/recordactivity;

    const-string v1, "No recorded sound to play yet!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 129
    .restart local v9       #temptoast:Landroid/widget/Toast;
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
