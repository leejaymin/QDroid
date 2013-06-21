.class public final Lcom/google/devtools/simple/runtime/components/android/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->MEDIA:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>Multimedia component that plays audio or video and controls phone vibration.  The name of a multimedia field is specified in the <code>Source</code> property, which can be set in the Designer or in the Blocks Editor.  The length of time for a vibration is specified in the Blocks Editor in milliseconds (thousandths of a second).</p><p>For legal sound and video formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>If you will only be playing sound files and vibrating, not using video, this component is best for long sound files, such as songs, while the <code>Sound</code> component is more efficient for short files, such as sound effects.</p>"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation


# instance fields
.field private final form:Lcom/google/devtools/simple/runtime/components/android/Form;

.field private mp:Landroid/media/MediaPlayer;

.field private playerState:I

.field private sourcePath:Ljava/lang/String;

.field private final vibe:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->sourcePath:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->vibe:Landroid/os/Vibrator;

    .line 97
    return-void
.end method

.method private prepare()V
    .locals 3

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 228
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    .line 229
    const-string v1, "Player"

    const-string v2, "Successfully prepared"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 232
    .local v0, ioe:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    .line 234
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to prepare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Player;->PlayerError(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public Initialize()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public Pause()V
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 180
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Pause -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    if-ne v0, v3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 183
    iput v3, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    .line 186
    :cond_0
    return-void
.end method

.method public PlayerError(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 219
    const-string v0, "Player"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "PlayerError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "Player"

    .line 126
    if-nez p1, :cond_4

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->sourcePath:Ljava/lang/String;

    .line 129
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 132
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    .line 133
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 135
    iput-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 139
    const-string v1, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->sourcePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 153
    const-string v1, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully loaded source path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Player;->prepare()V

    .line 160
    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v1, p1

    .line 126
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 147
    iput-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Player;->PlayerError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public Start()V
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 167
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Start -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    if-ne v0, v3, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 170
    iput v3, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    .line 173
    :cond_1
    return-void
.end method

.method public Stop()V
    .locals 3
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 193
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Stop -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 196
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Player;->prepare()V

    .line 199
    :cond_1
    return-void
.end method

.method public Vibrate(J)V
    .locals 1
    .parameter "milliseconds"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 208
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 244
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 245
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 246
    return-void
.end method
