.class Lexam/Draw/DashAnim$MyView$1;
.super Landroid/os/Handler;
.source "DashAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/DashAnim$MyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/Draw/DashAnim$MyView;


# direct methods
.method constructor <init>(Lexam/Draw/DashAnim$MyView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Draw/DashAnim$MyView$1;->this$1:Lexam/Draw/DashAnim$MyView;

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 51
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView$1;->this$1:Lexam/Draw/DashAnim$MyView;

    iget v1, v0, Lexam/Draw/DashAnim$MyView;->phase:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lexam/Draw/DashAnim$MyView;->phase:I

    .line 52
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView$1;->this$1:Lexam/Draw/DashAnim$MyView;

    invoke-virtual {v0}, Lexam/Draw/DashAnim$MyView;->invalidate()V

    .line 53
    const/4 v0, 0x0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lexam/Draw/DashAnim$MyView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    return-void
.end method
