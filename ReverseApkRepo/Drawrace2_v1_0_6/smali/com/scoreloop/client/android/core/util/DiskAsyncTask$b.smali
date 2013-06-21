.class final Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 318
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;

    .line 319
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 322
    :pswitch_0
    iget-object v1, v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;->a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->a(Lcom/scoreloop/client/android/core/util/DiskAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
