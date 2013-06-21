.class Ledu/umich/PowerTutor/ui/PowerViewer$4;
.super Ljava/lang/Object;
.source "PowerViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/PowerViewer;->showDialogSafely(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/PowerViewer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$4;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iput p2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$4;->val$id:I

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$4;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iget v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$4;->val$id:I

    invoke-virtual {v1, v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->showDialog(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "PowerViewer"

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not display dialog with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ledu/umich/PowerTutor/ui/PowerViewer$4;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 394
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "PowerViewer"

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not display dialog with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ledu/umich/PowerTutor/ui/PowerViewer$4;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
