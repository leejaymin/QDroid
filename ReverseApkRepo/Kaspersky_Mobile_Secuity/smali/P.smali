.class public final LP;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:D

.field private final d:D

.field private final e:D


# direct methods
.method synthetic constructor <init>(LQ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LP;-><init>(LQ;B)V

    return-void
.end method

.method private constructor <init>(LQ;B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LQ;->a(LQ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LP;->a:Ljava/lang/String;

    invoke-static {p1}, LQ;->b(LQ;)D

    move-result-wide v0

    iput-wide v0, p0, LP;->c:D

    invoke-static {p1}, LQ;->c(LQ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LP;->b:Ljava/lang/String;

    invoke-static {p1}, LQ;->d(LQ;)D

    move-result-wide v0

    iput-wide v0, p0, LP;->d:D

    invoke-static {p1}, LQ;->e(LQ;)D

    move-result-wide v0

    iput-wide v0, p0, LP;->e:D

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LP;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LP;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()D
    .locals 2

    iget-wide v0, p0, LP;->c:D

    return-wide v0
.end method

.method final d()D
    .locals 2

    iget-wide v0, p0, LP;->d:D

    return-wide v0
.end method

.method final e()D
    .locals 2

    iget-wide v0, p0, LP;->e:D

    return-wide v0
.end method
