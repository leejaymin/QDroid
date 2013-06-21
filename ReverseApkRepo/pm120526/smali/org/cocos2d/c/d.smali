.class public final Lorg/cocos2d/c/d;
.super Ljava/lang/Object;


# static fields
.field private static e:Lorg/cocos2d/c/d;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Z

.field private final f:Lorg/cocos2d/m/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cocos2d/c/d;

    invoke-direct {v0}, Lorg/cocos2d/c/d;-><init>()V

    sput-object v0, Lorg/cocos2d/c/d;->e:Lorg/cocos2d/c/d;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/m/a/a;

    invoke-direct {v0}, Lorg/cocos2d/m/a/a;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/c/d;->f:Lorg/cocos2d/m/a/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/c/d;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/c/d;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/c/d;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/d;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lorg/cocos2d/c/i;Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/c/e;

    invoke-direct {v1, p0, p2, p1}, Lorg/cocos2d/c/e;-><init>(Lorg/cocos2d/c/d;Ljava/util/ArrayList;Lorg/cocos2d/c/i;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/q;)V

    return-void
.end method

.method static synthetic b(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static b()Lorg/cocos2d/c/d;
    .locals 1

    sget-object v0, Lorg/cocos2d/c/d;->e:Lorg/cocos2d/c/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/c/d;->d:Z

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/c/d;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/c/d;->f:Lorg/cocos2d/m/a/a;

    invoke-virtual {v1, v0}, Lorg/cocos2d/m/a/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/cocos2d/i/d;)V
    .locals 2

    new-instance v0, Lorg/cocos2d/c/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/cocos2d/c/i;-><init>(Lorg/cocos2d/i/d;I)V

    iget-object v1, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/c/d;->a(Lorg/cocos2d/c/i;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b(Lorg/cocos2d/i/d;)V
    .locals 2

    new-instance v0, Lorg/cocos2d/c/c;

    invoke-direct {v0, p1}, Lorg/cocos2d/c/c;-><init>(Lorg/cocos2d/i/d;)V

    iget-object v1, p0, Lorg/cocos2d/c/d;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/c/d;->a(Lorg/cocos2d/c/i;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/c/g;

    invoke-direct {v1, p0}, Lorg/cocos2d/c/g;-><init>(Lorg/cocos2d/c/d;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/q;)V

    return-void
.end method

.method public final c(Lorg/cocos2d/i/d;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/c/f;

    invoke-direct {v1, p0, p1}, Lorg/cocos2d/c/f;-><init>(Lorg/cocos2d/c/d;Lorg/cocos2d/i/d;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/q;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/c/d;->f:Lorg/cocos2d/m/a/a;

    invoke-virtual {v0}, Lorg/cocos2d/m/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/cocos2d/c/d;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/c/d;->a:Ljava/util/ArrayList;

    monitor-enter v1

    move v2, v6

    :goto_1
    :try_start_0
    iget-object v3, p0, Lorg/cocos2d/c/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move v3, v1

    :goto_2
    move v4, v6

    :goto_3
    iget-object v1, p0, Lorg/cocos2d/c/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_3

    move v1, v6

    :goto_4
    if-nez v1, :cond_1

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/cocos2d/c/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    iget-object v1, p0, Lorg/cocos2d/c/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/c/c;

    packed-switch v2, :pswitch_data_1

    :cond_4
    :pswitch_1
    move v5, v6

    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    iget-boolean v1, v1, Lorg/cocos2d/c/c;->a:Z

    if-eqz v1, :cond_6

    move v1, v7

    goto :goto_4

    :pswitch_2
    invoke-virtual {v1, v0}, Lorg/cocos2d/c/c;->a(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v3}, Lorg/cocos2d/c/c;->a(I)V

    goto :goto_5

    :pswitch_3
    invoke-virtual {v1, v3}, Lorg/cocos2d/c/c;->c(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v0}, Lorg/cocos2d/c/c;->d(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1, v3}, Lorg/cocos2d/c/c;->b(I)V

    move v5, v7

    goto :goto_5

    :pswitch_4
    invoke-virtual {v1, v3}, Lorg/cocos2d/c/c;->c(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v0}, Lorg/cocos2d/c/c;->c(Landroid/view/MotionEvent;)Z

    move v5, v7

    goto :goto_5

    :pswitch_5
    invoke-virtual {v1, v3}, Lorg/cocos2d/c/c;->c(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v0}, Lorg/cocos2d/c/c;->b(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1, v3}, Lorg/cocos2d/c/c;->b(I)V

    move v5, v7

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :pswitch_6
    iget-boolean v1, p0, Lorg/cocos2d/c/d;->d:Z

    if-eqz v1, :cond_1

    move v2, v6

    :goto_6
    iget-object v1, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/c/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/c/i;->a(Landroid/view/MotionEvent;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :pswitch_7
    iget-boolean v1, p0, Lorg/cocos2d/c/d;->d:Z

    if-eqz v1, :cond_1

    move v2, v6

    :goto_7
    iget-object v1, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/c/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/c/i;->d(Landroid/view/MotionEvent;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :pswitch_8
    iget-boolean v1, p0, Lorg/cocos2d/c/d;->d:Z

    if-eqz v1, :cond_1

    move v2, v6

    :goto_8
    iget-object v1, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/c/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/c/i;->c(Landroid/view/MotionEvent;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    :pswitch_9
    iget-boolean v1, p0, Lorg/cocos2d/c/d;->d:Z

    if-eqz v1, :cond_1

    move v2, v6

    :goto_9
    iget-object v1, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/c/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/c/i;->b(Landroid/view/MotionEvent;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    :cond_7
    move v3, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
