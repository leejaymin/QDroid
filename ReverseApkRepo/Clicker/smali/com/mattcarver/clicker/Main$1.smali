.class Lcom/mattcarver/clicker/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mattcarver/clicker/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mattcarver/clicker/Main;


# direct methods
.method constructor <init>(Lcom/mattcarver/clicker/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mattcarver/clicker/Main$1;->this$0:Lcom/mattcarver/clicker/Main;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 85
    .local v0, action:I
    if-nez v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/mattcarver/clicker/Main$1;->this$0:Lcom/mattcarver/clicker/Main;

    invoke-virtual {v1, v2}, Lcom/mattcarver/clicker/Main;->playDown(Z)V

    .line 90
    :cond_0
    :goto_0
    return v2

    .line 87
    :cond_1
    if-ne v0, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/mattcarver/clicker/Main$1;->this$0:Lcom/mattcarver/clicker/Main;

    invoke-virtual {v1, v2}, Lcom/mattcarver/clicker/Main;->playUp(Z)V

    goto :goto_0
.end method
