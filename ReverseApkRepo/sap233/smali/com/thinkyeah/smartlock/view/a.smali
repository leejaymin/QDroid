.class public final Lcom/thinkyeah/smartlock/view/a;
.super Ljava/lang/Object;


# static fields
.field static c:[[Lcom/thinkyeah/smartlock/view/a;


# instance fields
.field a:I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x3

    filled-new-array {v5, v5}, [I

    move-result-object v0

    const-class v2, Lcom/thinkyeah/smartlock/view/a;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/thinkyeah/smartlock/view/a;

    sput-object v0, Lcom/thinkyeah/smartlock/view/a;->c:[[Lcom/thinkyeah/smartlock/view/a;

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_0

    return-void

    :cond_0
    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/thinkyeah/smartlock/view/a;->c:[[Lcom/thinkyeah/smartlock/view/a;

    aget-object v3, v3, v2

    new-instance v4, Lcom/thinkyeah/smartlock/view/a;

    invoke-direct {v4, v2, v0}, Lcom/thinkyeah/smartlock/view/a;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/thinkyeah/smartlock/view/a;->b(II)V

    iput p1, p0, Lcom/thinkyeah/smartlock/view/a;->a:I

    iput p2, p0, Lcom/thinkyeah/smartlock/view/a;->b:I

    return-void
.end method

.method public static declared-synchronized a(II)Lcom/thinkyeah/smartlock/view/a;
    .locals 2

    const-class v1, Lcom/thinkyeah/smartlock/view/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/thinkyeah/smartlock/view/a;->b(II)V

    sget-object v0, Lcom/thinkyeah/smartlock/view/a;->c:[[Lcom/thinkyeah/smartlock/view/a;

    aget-object v0, v0, p0

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(II)V
    .locals 2

    const/4 v0, 0x2

    if-ltz p0, :cond_0

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/thinkyeah/smartlock/view/a;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/thinkyeah/smartlock/view/a;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(row="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/thinkyeah/smartlock/view/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/thinkyeah/smartlock/view/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
