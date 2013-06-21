.class Ledu/umich/PowerTutor/ui/PowerViewer$3;
.super Ljava/lang/Object;
.source "PowerViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/PowerViewer;->dismissDialogSafely(I)V
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
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$3;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iput p2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$3;->val$id:I

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$3;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iget v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$3;->val$id:I

    invoke-virtual {v1, v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "PowerViewer"

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not dismiss dialog with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ledu/umich/PowerTutor/ui/PowerViewer$3;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
