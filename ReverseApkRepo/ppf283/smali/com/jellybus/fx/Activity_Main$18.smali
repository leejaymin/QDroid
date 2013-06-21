.class Lcom/jellybus/fx/Activity_Main$18;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Main;->setSizePictureBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$18;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1273
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1274
    const/4 v0, 0x0

    return v0
.end method
