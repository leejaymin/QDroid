.class Lorg/tf/BrowserActivity$SongLoadedRunnable;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SongLoadedRunnable"
.end annotation


# instance fields
.field private m_song:Lorg/tf/song/SongInfo;

.field final synthetic this$0:Lorg/tf/BrowserActivity;


# direct methods
.method public constructor <init>(Lorg/tf/BrowserActivity;Lorg/tf/song/SongInfo;)V
    .locals 0
    .parameter
    .parameter "song"

    .prologue
    .line 334
    iput-object p1, p0, Lorg/tf/BrowserActivity$SongLoadedRunnable;->this$0:Lorg/tf/BrowserActivity;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p2, p0, Lorg/tf/BrowserActivity$SongLoadedRunnable;->m_song:Lorg/tf/song/SongInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/tf/BrowserActivity$SongLoadedRunnable;->this$0:Lorg/tf/BrowserActivity;

    iget-object v1, p0, Lorg/tf/BrowserActivity$SongLoadedRunnable;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/BrowserActivity;->updateLoadingProgress(Lorg/tf/song/SongInfo;)V
    invoke-static {v0, v1}, Lorg/tf/BrowserActivity;->access$1(Lorg/tf/BrowserActivity;Lorg/tf/song/SongInfo;)V

    .line 337
    iget-object v0, p0, Lorg/tf/BrowserActivity$SongLoadedRunnable;->this$0:Lorg/tf/BrowserActivity;

    iget-object v1, p0, Lorg/tf/BrowserActivity$SongLoadedRunnable;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/BrowserActivity;->onSongLoaded(Lorg/tf/song/SongInfo;)V
    invoke-static {v0, v1}, Lorg/tf/BrowserActivity;->access$2(Lorg/tf/BrowserActivity;Lorg/tf/song/SongInfo;)V

    .line 338
    return-void
.end method
