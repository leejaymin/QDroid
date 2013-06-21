.class public final Lorg/cocos2d/c/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lorg/cocos2d/c/a;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Z

.field private final d:Lorg/cocos2d/m/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cocos2d/c/a;

    invoke-direct {v0}, Lorg/cocos2d/c/a;-><init>()V

    sput-object v0, Lorg/cocos2d/c/a;->c:Lorg/cocos2d/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/m/a/a;

    invoke-direct {v0}, Lorg/cocos2d/m/a/a;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/c/a;->d:Lorg/cocos2d/m/a/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/c/a;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lorg/cocos2d/c/a;
    .locals 1

    sget-object v0, Lorg/cocos2d/c/a;->c:Lorg/cocos2d/c/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/i/a;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Lorg/cocos2d/c/b;

    invoke-direct {v1, p1}, Lorg/cocos2d/c/b;-><init>(Lorg/cocos2d/i/a;)V

    iget-object v2, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    monitor-enter v2

    move v3, v0

    move v4, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/c/b;

    invoke-virtual {v0}, Lorg/cocos2d/c/b;->b()I

    move-result v5

    invoke-virtual {v1}, Lorg/cocos2d/c/b;->b()I

    move-result v6

    if-ge v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    invoke-virtual {v0}, Lorg/cocos2d/c/b;->a()Lorg/cocos2d/i/a;

    move-result-object v0

    invoke-virtual {v1}, Lorg/cocos2d/c/b;->a()Lorg/cocos2d/i/a;

    move-result-object v5

    if-ne v0, v5, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    const/4 v5, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/cocos2d/c/a;->d:Lorg/cocos2d/m/a/a;

    invoke-virtual {v0}, Lorg/cocos2d/m/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lorg/cocos2d/c/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    monitor-enter v2

    move v3, v5

    :goto_1
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_3

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/c/b;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v1, v4, v0}, Lorg/cocos2d/c/b;->a(ILandroid/view/KeyEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lorg/cocos2d/c/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    monitor-enter v2

    move v3, v5

    :goto_2
    :try_start_2
    iget-object v1, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_5

    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    :try_start_3
    iget-object v1, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/c/b;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v1, v4, v0}, Lorg/cocos2d/c/b;->b(ILandroid/view/KeyEvent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lorg/cocos2d/i/a;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/c/b;

    invoke-virtual {v0}, Lorg/cocos2d/c/b;->a()Lorg/cocos2d/i/a;

    move-result-object v3

    if-ne v3, p1, :cond_2

    iget-object v2, p0, Lorg/cocos2d/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method
