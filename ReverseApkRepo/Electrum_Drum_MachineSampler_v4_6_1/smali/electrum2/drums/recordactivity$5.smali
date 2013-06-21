.class Lelectrum2/drums/recordactivity$5;
.super Ljava/lang/Object;
.source "recordactivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/recordactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/recordactivity;


# direct methods
.method constructor <init>(Lelectrum2/drums/recordactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/recordactivity$5;->this$0:Lelectrum2/drums/recordactivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 200
    iget-object v0, p0, Lelectrum2/drums/recordactivity$5;->this$0:Lelectrum2/drums/recordactivity;

    iget v1, v0, Lelectrum2/drums/recordactivity;->countdownval:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lelectrum2/drums/recordactivity;->countdownval:I

    .line 202
    iget-object v0, p0, Lelectrum2/drums/recordactivity$5;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v0, v0, Lelectrum2/drums/recordactivity;->statushandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$5;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->updatecountdown:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    iget-object v0, p0, Lelectrum2/drums/recordactivity$5;->this$0:Lelectrum2/drums/recordactivity;

    iget v0, v0, Lelectrum2/drums/recordactivity;->countdownval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method
