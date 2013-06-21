.class Lorg/armyapp/marinecorps/MainActivity$1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/armyapp/marinecorps/MainActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/armyapp/marinecorps/MainActivity$1;

.field private final synthetic val$mplayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lorg/armyapp/marinecorps/MainActivity$1;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity$1$2;->this$1:Lorg/armyapp/marinecorps/MainActivity$1;

    iput-object p2, p0, Lorg/armyapp/marinecorps/MainActivity$1$2;->val$mplayer:Landroid/media/MediaPlayer;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$1$2;->val$mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$1$2;->val$mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method
