.class Lcom/gameboys/pocket7/PSound$1;
.super Ljava/lang/Object;
.source "PSound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameboys/pocket7/PSound;->Play(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/PSound;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/PSound;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/PSound$1;->this$0:Lcom/gameboys/pocket7/PSound;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound$1;->this$0:Lcom/gameboys/pocket7/PSound;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameboys/pocket7/PSound;->isPlay:Z

    .line 50
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound$1;->this$0:Lcom/gameboys/pocket7/PSound;

    iget-boolean v0, v0, Lcom/gameboys/pocket7/PSound;->isLoop:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound$1;->this$0:Lcom/gameboys/pocket7/PSound;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameboys/pocket7/PSound;->isPlay:Z

    .line 52
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 54
    :cond_0
    return-void
.end method
