.class Lorg/armyapp/marinecorps/MainActivity$1$3;
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
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity$1$3;->this$1:Lorg/armyapp/marinecorps/MainActivity$1;

    iput-object p2, p0, Lorg/armyapp/marinecorps/MainActivity$1$3;->val$mplayer:Landroid/media/MediaPlayer;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$1$3;->val$mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 96
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$1$3;->this$1:Lorg/armyapp/marinecorps/MainActivity$1;

    #getter for: Lorg/armyapp/marinecorps/MainActivity$1;->this$0:Lorg/armyapp/marinecorps/MainActivity;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity$1;->access$0(Lorg/armyapp/marinecorps/MainActivity$1;)Lorg/armyapp/marinecorps/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/armyapp/marinecorps/MainActivity;->Back()V

    .line 97
    return-void
.end method
