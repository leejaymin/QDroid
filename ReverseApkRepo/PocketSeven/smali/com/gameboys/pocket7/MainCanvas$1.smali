.class Lcom/gameboys/pocket7/MainCanvas$1;
.super Ljava/lang/Object;
.source "MainCanvas.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameboys/pocket7/MainCanvas;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/MainCanvas;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/MainCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/MainCanvas$1;->this$0:Lcom/gameboys/pocket7/MainCanvas;

    .line 8309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 8313
    iget-object v0, p0, Lcom/gameboys/pocket7/MainCanvas$1;->this$0:Lcom/gameboys/pocket7/MainCanvas;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameboys/pocket7/MainCanvas;->isRunningThread:Z

    .line 8314
    iget-object v0, p0, Lcom/gameboys/pocket7/MainCanvas$1;->this$0:Lcom/gameboys/pocket7/MainCanvas;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameboys/pocket7/MainCanvas;->isExit:Z

    .line 8315
    return-void
.end method
