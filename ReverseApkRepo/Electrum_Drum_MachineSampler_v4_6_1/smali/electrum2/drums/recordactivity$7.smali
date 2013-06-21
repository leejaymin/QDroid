.class Lelectrum2/drums/recordactivity$7;
.super Ljava/lang/Object;
.source "recordactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lelectrum2/drums/recordactivity$7;->this$0:Lelectrum2/drums/recordactivity;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 320
    iget-object v1, p0, Lelectrum2/drums/recordactivity$7;->this$0:Lelectrum2/drums/recordactivity;

    iget-boolean v1, v1, Lelectrum2/drums/recordactivity;->isRecording:Z

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lelectrum2/drums/recordactivity$7;->this$0:Lelectrum2/drums/recordactivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lelectrum2/drums/recordactivity;->isRecording:Z

    .line 325
    iget-object v1, p0, Lelectrum2/drums/recordactivity$7;->this$0:Lelectrum2/drums/recordactivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lelectrum2/drums/recordactivity;->waserror:Z

    .line 327
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$7;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->recordThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 328
    .local v0, tempthread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 336
    .end local v0           #tempthread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
