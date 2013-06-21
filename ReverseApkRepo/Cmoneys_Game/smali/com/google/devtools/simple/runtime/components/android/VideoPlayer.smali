.class public final Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->MEDIA:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "A multimedia component capable of playing videos. When the application is run, the VideoPlayer will be displayed as a rectangle on-screen.  If the user touches the rectangle, controls will appear to play/pause, skip ahead, and skip backward within the video.  The application can also control behavior by calling the <code>Start</code>, <code>Pause</code>, and <code>Stop</code> methods.  <p>Video files should be in Windows Media Video (.wmv) format, 3GPP (.3gp), or MPEG-4 (.mp4).  For more details about legal formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>App Inventor for Android only permits video files under 1 MB and limits the total size of an application to 5 MB, not all of which is available for media (video, audio, and sound) files.  If your media files are too large, you may get errors when packaging or installing your application, in which case you should reduce the number of media files or their sizes.  Most video editing software, such as Windows Movie Maker and Apple iMovie, can help you decrease the size of videos by shortening them or re-encoding the video into a more compact format.</p>"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private duringLoad:Z

.field private sourcePath:Ljava/lang/String;

.field private final videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 100
    new-instance v0, Landroid/widget/VideoView;

    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    .line 101
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 102
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 106
    invoke-interface {p1, p0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 108
    const/16 v0, 0xb0

    invoke-interface {p1, p0, v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->setChildWidth(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V

    .line 109
    const/16 v0, 0x90

    invoke-interface {p1, p0, v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->setChildHeight(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public Completed()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 217
    const-string v0, "Completed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public GetDuration()I
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Returns duration of the video in milliseconds."
    .end annotation

    .prologue
    .line 201
    const-string v0, "VideoPlayer"

    const-string v1, "Calling GetDuration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 288
    invoke-super {p0}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->Height()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 0
    .parameter "height"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->Height(I)V

    .line 300
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public Pause()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Pauses playback of the video.  Playback can be resumed at the same location by calling the <code>Start</code> method."
    .end annotation

    .prologue
    .line 184
    const-string v0, "VideoPlayer"

    const-string v1, "Calling Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 186
    return-void
.end method

.method public SeekTo(I)V
    .locals 2
    .parameter "ms"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Seeks to the requested time (specified in milliseconds) in the video. Note that if the video is paused, the frame shown will not be updated by the seek. "
    .end annotation

    .prologue
    .line 192
    const-string v0, "VideoPlayer"

    const-string v1, "Calling SeekTo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 196
    return-void
.end method

.method public Source(Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The \"path\" to the video.  Usually, this will be the name of the video file, which should be added in the Designer."
    .end annotation

    .prologue
    const-string v4, "VideoPlayer"

    .line 140
    if-nez p1, :cond_2

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 147
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->clearAnimation()V

    .line 149
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 150
    const-string v1, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->duringLoad:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v2}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->duringLoad:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    const-string v1, "VideoPlayer"

    const-string v1, "loading video succeeded"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v1, p1

    .line 140
    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->duringLoad:Z

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 159
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 160
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->VideoPlayerError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public Start()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Starts playback of the video."
    .end annotation

    .prologue
    .line 176
    const-string v0, "VideoPlayer"

    const-string v1, "Calling Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 178
    return-void
.end method

.method public VideoPlayerError(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 241
    const-string v0, "VideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "VideoPlayerError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 266
    invoke-super {p0}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->Width()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 0
    .parameter "width"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->Width(I)V

    .line 278
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->Completed()V

    .line 210
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 250
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "m"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->duringLoad:Z

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->VideoPlayerError(Ljava/lang/String;)V

    .line 229
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_0
    const-string v0, "An error occurred"

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/VideoPlayer;->VideoPlayerError(Ljava/lang/String;)V

    goto :goto_0
.end method
