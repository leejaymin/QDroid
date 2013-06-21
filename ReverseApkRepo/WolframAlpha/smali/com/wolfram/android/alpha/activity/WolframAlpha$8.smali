.class Lcom/wolfram/android/alpha/activity/WolframAlpha$8;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;->soundClickHandler(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

.field final synthetic val$audioButton:Landroid/view/View;

.field final synthetic val$mp:Landroid/media/MediaPlayer;

.field final synthetic val$sound:Lcom/wolfram/alpha/WASound;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/view/View;Lcom/wolfram/alpha/WASound;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2052
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;->val$audioButton:Landroid/view/View;

    iput-object p3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;->val$sound:Lcom/wolfram/alpha/WASound;

    iput-object p4, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;->val$mp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "player"

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;->val$audioButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2059
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;->val$audioButton:Landroid/view/View;

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;->val$sound:Lcom/wolfram/alpha/WASound;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2061
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2063
    return-void
.end method
