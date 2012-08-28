.class Lorg/connectbot/ConsoleActivity$7;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/ConsoleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/ConsoleActivity;

.field private final synthetic val$keyboardGroup:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$7;->this$0:Lorg/connectbot/ConsoleActivity;

    iput-object p2, p0, Lorg/connectbot/ConsoleActivity$7;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 363
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$7;->this$0:Lorg/connectbot/ConsoleActivity;

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, flip:Landroid/view/View;
    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$7;->this$0:Lorg/connectbot/ConsoleActivity;

    #getter for: Lorg/connectbot/ConsoleActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lorg/connectbot/ConsoleActivity;->access$3(Lorg/connectbot/ConsoleActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 368
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$7;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
