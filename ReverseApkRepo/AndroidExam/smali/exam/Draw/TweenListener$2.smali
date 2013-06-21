.class Lexam/Draw/TweenListener$2;
.super Ljava/lang/Object;
.source "TweenListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Draw/TweenListener;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/TweenListener;


# direct methods
.method constructor <init>(Lexam/Draw/TweenListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Draw/TweenListener$2;->this$0:Lexam/Draw/TweenListener;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 37
    iget-object v0, p0, Lexam/Draw/TweenListener$2;->this$0:Lexam/Draw/TweenListener;

    iget-object v0, v0, Lexam/Draw/TweenListener;->mBtn:Landroid/widget/Button;

    iget-object v1, p0, Lexam/Draw/TweenListener$2;->this$0:Lexam/Draw/TweenListener;

    iget-object v1, v1, Lexam/Draw/TweenListener;->mAni2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 40
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 41
    return-void
.end method
