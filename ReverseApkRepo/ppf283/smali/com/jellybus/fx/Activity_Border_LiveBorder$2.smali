.class Lcom/jellybus/fx/Activity_Border_LiveBorder$2;
.super Ljava/lang/Object;
.source "Activity_Border_LiveBorder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_LiveBorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$2;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method
