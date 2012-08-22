.class Lcom/jaynux/app/measureActivity$4;
.super Ljava/lang/Object;
.source "measureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaynux/app/measureActivity;->showDialogSafely(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/measureActivity;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/jaynux/app/measureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$4;->this$0:Lcom/jaynux/app/measureActivity;

    iput p2, p0, Lcom/jaynux/app/measureActivity$4;->val$id:I

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/jaynux/app/measureActivity$4;->this$0:Lcom/jaynux/app/measureActivity;

    iget v2, p0, Lcom/jaynux/app/measureActivity$4;->val$id:I

    invoke-virtual {v1, v2}, Lcom/jaynux/app/measureActivity;->showDialog(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 628
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "measureActivity"

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not display dialog with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jaynux/app/measureActivity$4;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 624
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v0

    .line 625
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "measureActivity"

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not display dialog with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jaynux/app/measureActivity$4;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
