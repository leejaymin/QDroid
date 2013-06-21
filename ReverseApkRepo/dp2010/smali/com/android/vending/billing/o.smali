.class final Lcom/android/vending/billing/o;
.super Lcom/android/vending/billing/p;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/android/vending/billing/l;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/l;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {p1}, Lcom/android/vending/billing/l;->a(Lcom/android/vending/billing/l;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/vending/billing/p;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    return-void
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/android/vending/billing/o;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/vending/billing/h;->values()[Lcom/android/vending/billing/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/vending/billing/h;->d:Lcom/android/vending/billing/h;

    invoke-virtual {v1}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/vending/billing/h;->f:Lcom/android/vending/billing/h;

    invoke-virtual {v1}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/vending/billing/h;->g:Lcom/android/vending/billing/h;

    invoke-virtual {v1}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/android/vending/billing/h;->e:Lcom/android/vending/billing/h;

    invoke-virtual {v1}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    invoke-virtual {v1}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/android/vending/billing/h;->c:Lcom/android/vending/billing/h;

    invoke-virtual {v1}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/android/vending/billing/h;->b:Lcom/android/vending/billing/h;

    invoke-virtual {v1}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/android/vending/billing/o;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/android/vending/billing/h;)V
    .locals 4

    const/16 v3, 0x70

    const/16 v2, 0x6f

    sget-object v0, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {v0}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {v1}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {v1}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/vending/billing/h;->b:Lcom/android/vending/billing/h;

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f

    invoke-static {}, Lcom/android/vending/billing/o;->b()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {v1}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {v1}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {v1}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x7b

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x7c

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x7d

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x7e

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 4

    const/16 v3, 0x70

    if-eqz p2, :cond_0

    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {v0}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7a

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {v1}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/l;

    invoke-static {v1}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
