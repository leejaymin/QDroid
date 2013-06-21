.class final Lccc71/utils/android/f;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 593
    invoke-direct {p0}, Lccc71/utils/android/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 600
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/utils/android/e;

    .line 601
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 611
    :goto_0
    return-void

    .line 605
    :pswitch_0
    iget-object v1, v0, Lccc71/utils/android/e;->a:Lccc71/utils/android/a;

    iget-object v0, v0, Lccc71/utils/android/e;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lccc71/utils/android/a;->a(Lccc71/utils/android/a;Ljava/lang/Object;)V

    goto :goto_0

    .line 608
    :pswitch_1
    iget-object v1, v0, Lccc71/utils/android/e;->a:Lccc71/utils/android/a;

    iget-object v0, v0, Lccc71/utils/android/e;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
