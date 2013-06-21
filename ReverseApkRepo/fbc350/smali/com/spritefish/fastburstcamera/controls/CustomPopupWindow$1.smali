.class Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow$1;
.super Ljava/lang/Object;
.source "CustomPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow$1;->this$0:Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow$1;->this$0:Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
