.class Lorg/armyapp/marinecorps/MainActivity$1$1;
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
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity$1$1;->this$1:Lorg/armyapp/marinecorps/MainActivity$1;

    iput-object p2, p0, Lorg/armyapp/marinecorps/MainActivity$1$1;->val$mplayer:Landroid/media/MediaPlayer;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$1$1;->val$mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 76
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$1$1;->val$mplayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/armyapp/marinecorps/MainActivity$1$1$1;

    invoke-direct {v1, p0}, Lorg/armyapp/marinecorps/MainActivity$1$1$1;-><init>(Lorg/armyapp/marinecorps/MainActivity$1$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 80
    return-void
.end method
