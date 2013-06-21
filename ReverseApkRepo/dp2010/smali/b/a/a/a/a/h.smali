.class public final Lb/a/a/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Calendar;

.field private j:[[Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lb/a/a/a/a/h;->j:[[Z

    iput-object v3, p0, Lb/a/a/a/a/h;->d:Ljava/lang/String;

    iput v2, p0, Lb/a/a/a/a/h;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/a/h;->b:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/a/a/a/a/h;->c:J

    const-string v0, ""

    iput-object v0, p0, Lb/a/a/a/a/h;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lb/a/a/a/a/h;->f:Ljava/lang/String;

    iput-object v3, p0, Lb/a/a/a/a/h;->i:Ljava/util/Calendar;

    iput-object v3, p0, Lb/a/a/a/a/h;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lb/a/a/a/a/h;->a:I

    return-void
.end method

.method public final a(IIZ)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/h;->j:[[Z

    aget-object v0, v0, p1

    aput-boolean p3, v0, p2

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lb/a/a/a/a/h;->c:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/a/h;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/a/h;->i:Ljava/util/Calendar;

    return-void
.end method

.method public final a()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lb/a/a/a/a/h;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lb/a/a/a/a/h;->b:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/a/h;->g:Ljava/lang/String;

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lb/a/a/a/a/h;->c:J

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/a/h;->f:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/h;->i:Ljava/util/Calendar;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/a/h;->e:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/a/h;->h:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/h;->d:Ljava/lang/String;

    return-object v0
.end method
