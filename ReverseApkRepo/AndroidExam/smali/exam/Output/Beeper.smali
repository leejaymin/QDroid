.class Lexam/Output/Beeper;
.super Ljava/lang/Object;
.source "MessageBeep.java"


# instance fields
.field player:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lexam/Output/Beeper;->player:Landroid/media/MediaPlayer;

    .line 55
    return-void
.end method


# virtual methods
.method play()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lexam/Output/Beeper;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 59
    iget-object v0, p0, Lexam/Output/Beeper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 60
    return-void
.end method
