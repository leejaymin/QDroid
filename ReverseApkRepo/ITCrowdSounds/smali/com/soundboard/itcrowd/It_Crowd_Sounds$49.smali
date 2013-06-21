.class Lcom/soundboard/itcrowd/It_Crowd_Sounds$49;
.super Ljava/lang/Object;
.source "It_Crowd_Sounds.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundboard/itcrowd/It_Crowd_Sounds;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;


# direct methods
.method constructor <init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$49;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    .line 1644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1648
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 1650
    return-void
.end method
