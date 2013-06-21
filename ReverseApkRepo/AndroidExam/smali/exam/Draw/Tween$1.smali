.class Lexam/Draw/Tween$1;
.super Ljava/lang/Object;
.source "Tween.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/Tween;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/Tween;


# direct methods
.method constructor <init>(Lexam/Draw/Tween;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Draw/Tween$1;->this$0:Lexam/Draw/Tween;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, ani:Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 44
    :goto_0
    iget-object v1, p0, Lexam/Draw/Tween$1;->this$0:Lexam/Draw/Tween;

    iget-object v1, v1, Lexam/Draw/Tween;->mLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    return-void

    .line 29
    :pswitch_0
    iget-object v1, p0, Lexam/Draw/Tween$1;->this$0:Lexam/Draw/Tween;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 30
    goto :goto_0

    .line 32
    :pswitch_1
    iget-object v1, p0, Lexam/Draw/Tween$1;->this$0:Lexam/Draw/Tween;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 33
    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v1, p0, Lexam/Draw/Tween$1;->this$0:Lexam/Draw/Tween;

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 36
    goto :goto_0

    .line 38
    :pswitch_3
    iget-object v1, p0, Lexam/Draw/Tween$1;->this$0:Lexam/Draw/Tween;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 39
    goto :goto_0

    .line 41
    :pswitch_4
    iget-object v1, p0, Lexam/Draw/Tween$1;->this$0:Lexam/Draw/Tween;

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0034
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
