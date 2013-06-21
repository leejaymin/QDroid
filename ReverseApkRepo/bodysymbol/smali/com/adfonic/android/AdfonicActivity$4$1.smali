.class Lcom/adfonic/android/AdfonicActivity$4$1;
.super Ljava/lang/Object;
.source "AdfonicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicActivity$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adfonic/android/AdfonicActivity$4;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicActivity$4;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/adfonic/android/AdfonicActivity$4$1;->this$1:Lcom/adfonic/android/AdfonicActivity$4;

    iput p2, p0, Lcom/adfonic/android/AdfonicActivity$4$1;->val$what:I

    iput p3, p0, Lcom/adfonic/android/AdfonicActivity$4$1;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    invoke-static {}, Lcom/adfonic/android/utils/Log;->errorLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error playing ad media. What="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adfonic/android/AdfonicActivity$4$1;->val$what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adfonic/android/AdfonicActivity$4$1;->val$extra:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method
