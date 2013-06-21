.class Lcom/wolfram/android/alpha/view/SubpodView$1;
.super Ljava/lang/Object;
.source "SubpodView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/view/SubpodView;->populate(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/view/SubpodView;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/view/SubpodView;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/SubpodView$1;->this$0:Lcom/wolfram/android/alpha/view/SubpodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView$1;->this$0:Lcom/wolfram/android/alpha/view/SubpodView;

    iget v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->original_size:I

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/view/SubpodView$1;->this$0:Lcom/wolfram/android/alpha/view/SubpodView;

    iget-object v1, v1, Lcom/wolfram/android/alpha/view/SubpodView;->subpodview:Lcom/wolfram/android/alpha/view/SubpodView;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize(Lcom/wolfram/android/alpha/view/SubpodView;)V

    .line 139
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView$1;->this$0:Lcom/wolfram/android/alpha/view/SubpodView;

    #getter for: Lcom/wolfram/android/alpha/view/SubpodView;->gestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/wolfram/android/alpha/view/SubpodView;->access$000(Lcom/wolfram/android/alpha/view/SubpodView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
