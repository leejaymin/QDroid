.class final Lorg/connectbot/Console$3;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/Console;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/Console;

.field private final synthetic val$detect:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lorg/connectbot/Console;Landroid/view/GestureDetector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/Console$3;->this$0:Lorg/connectbot/Console;

    iput-object p2, p0, Lorg/connectbot/Console$3;->val$detect:Landroid/view/GestureDetector;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 297
    iget-object v0, p0, Lorg/connectbot/Console$3;->val$detect:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
