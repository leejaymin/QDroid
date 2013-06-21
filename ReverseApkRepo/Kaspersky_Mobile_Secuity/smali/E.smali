.class public final LE;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:D

.field private final f:J


# direct methods
.method synthetic constructor <init>(LF;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LE;-><init>(LF;B)V

    return-void
.end method

.method private constructor <init>(LF;B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LF;->a(LF;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LE;->a:Ljava/lang/String;

    invoke-static {p1}, LF;->b(LF;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LE;->b:Ljava/lang/String;

    invoke-static {p1}, LF;->c(LF;)D

    move-result-wide v0

    iput-wide v0, p0, LE;->e:D

    invoke-static {p1}, LF;->d(LF;)J

    move-result-wide v0

    iput-wide v0, p0, LE;->f:J

    invoke-static {p1}, LF;->e(LF;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LE;->c:Ljava/lang/String;

    invoke-static {p1}, LF;->f(LF;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LE;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LE;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LE;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LE;->c:Ljava/lang/String;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LE;->d:Ljava/lang/String;

    return-object v0
.end method

.method final e()D
    .locals 2

    iget-wide v0, p0, LE;->e:D

    return-wide v0
.end method

.method final f()J
    .locals 2

    iget-wide v0, p0, LE;->f:J

    return-wide v0
.end method
