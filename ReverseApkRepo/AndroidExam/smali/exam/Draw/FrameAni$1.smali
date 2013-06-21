.class Lexam/Draw/FrameAni$1;
.super Ljava/lang/Object;
.source "FrameAni.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Draw/FrameAni;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/FrameAni;


# direct methods
.method constructor <init>(Lexam/Draw/FrameAni;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Draw/FrameAni$1;->this$0:Lexam/Draw/FrameAni;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 22
    iget-object v0, p0, Lexam/Draw/FrameAni$1;->this$0:Lexam/Draw/FrameAni;

    iget-object v0, v0, Lexam/Draw/FrameAni;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 23
    return-void
.end method
