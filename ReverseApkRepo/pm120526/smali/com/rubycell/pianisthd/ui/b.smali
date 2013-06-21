.class public final Lcom/rubycell/pianisthd/ui/b;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/b;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "++++++++++++++++++++Animate touch"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/cocos2d/e/b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
