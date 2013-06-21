.class public final Lcom/mobclix/android/sdk/o;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/HashMap;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private f:J

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/o;->b:Z

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/o;->c:Z

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/o;->d:Z

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/mobclix/android/sdk/o;->e:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/mobclix/android/sdk/o;->f:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/o;->a:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/o;->g:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/o;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mobclix/android/sdk/o;->e:J

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/o;->h:Ljava/lang/String;

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobclix/android/sdk/o;->b:Z

    return-void
.end method

.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/o;->b:Z

    return v0
.end method

.method final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mobclix/android/sdk/o;->f:J

    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobclix/android/sdk/o;->c:Z

    return-void
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/o;->c:Z

    return v0
.end method

.method final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobclix/android/sdk/o;->d:Z

    return-void
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/o;->d:Z

    return v0
.end method

.method final d()J
    .locals 2

    iget-wide v0, p0, Lcom/mobclix/android/sdk/o;->e:J

    return-wide v0
.end method

.method final e()J
    .locals 2

    iget-wide v0, p0, Lcom/mobclix/android/sdk/o;->f:J

    return-wide v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/o;->h:Ljava/lang/String;

    return-object v0
.end method
