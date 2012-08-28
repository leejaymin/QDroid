.class Lorg/connectbot/ConsoleActivity$11$1;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/ConsoleActivity$11;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/ConsoleActivity$11;

.field private final synthetic val$keyboardGroup:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity$11;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$11$1;->this$1:Lorg/connectbot/ConsoleActivity$11;

    iput-object p2, p0, Lorg/connectbot/ConsoleActivity$11$1;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 569
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity$11$1;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity$11$1;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$11$1;->this$1:Lorg/connectbot/ConsoleActivity$11;

    #getter for: Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;
    invoke-static {v1}, Lorg/connectbot/ConsoleActivity$11;->access$0(Lorg/connectbot/ConsoleActivity$11;)Lorg/connectbot/ConsoleActivity;

    move-result-object v1

    #getter for: Lorg/connectbot/ConsoleActivity;->keyboard_fade_out:Landroid/view/animation/Animation;
    invoke-static {v1}, Lorg/connectbot/ConsoleActivity;->access$14(Lorg/connectbot/ConsoleActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 573
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity$11$1;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
