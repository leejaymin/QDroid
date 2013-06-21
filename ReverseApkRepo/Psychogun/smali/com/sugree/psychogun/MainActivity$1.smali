.class Lcom/sugree/psychogun/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sugree/psychogun/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sugree/psychogun/MainActivity;


# direct methods
.method constructor <init>(Lcom/sugree/psychogun/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sugree/psychogun/MainActivity$1;->this$0:Lcom/sugree/psychogun/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "e"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 50
    .local v0, action:I
    const/4 v1, 0x0

    .line 52
    .local v1, ret:Z
    if-nez v0, :cond_1

    .line 53
    iget-object v2, p0, Lcom/sugree/psychogun/MainActivity$1;->this$0:Lcom/sugree/psychogun/MainActivity;

    invoke-virtual {v2}, Lcom/sugree/psychogun/MainActivity;->charge()V

    .line 54
    const/4 v1, 0x1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/sugree/psychogun/MainActivity$1;->this$0:Lcom/sugree/psychogun/MainActivity;

    invoke-virtual {v2}, Lcom/sugree/psychogun/MainActivity;->fire()V

    .line 57
    const/4 v1, 0x1

    goto :goto_0
.end method
