.class public final Lb/a/a/a/a/a/i;
.super Lb/a/a/a/a/a/b;


# instance fields
.field private b:Lb/a/a/a/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/i;-><init>(Lb/a/a/a/a/e;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/a/e;)V
    .locals 4

    const-string v0, "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/i;->a(Lb/a/a/a/a/e;)V

    new-instance v1, Lb/a/a/a/a/e;

    const-string v0, "WINDOWS"

    const-string v2, "MM-dd-yy kk:mm"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lb/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MM-dd-yy kk:mm"

    invoke-virtual {v1, v0}, Lb/a/a/a/a/e;->a(Ljava/lang/String;)V

    new-instance v0, Lb/a/a/a/a/a/f;

    invoke-direct {v0}, Lb/a/a/a/a/a/f;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/a/i;->b:Lb/a/a/a/a/a/e;

    iget-object v0, p0, Lb/a/a/a/a/a/i;->b:Lb/a/a/a/a/a/e;

    check-cast v0, Lb/a/a/a/a/a;

    invoke-interface {v0, v1}, Lb/a/a/a/a/a;->a(Lb/a/a/a/a/e;)V

    return-void
.end method


# virtual methods
.method public final a()Lb/a/a/a/a/e;
    .locals 4

    new-instance v0, Lb/a/a/a/a/e;

    const-string v1, "WINDOWS"

    const-string v2, "MM-dd-yy hh:mma"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lb/a/a/a/a/h;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    new-instance v0, Lb/a/a/a/a/h;

    invoke-direct {v0}, Lb/a/a/a/a/h;-><init>()V

    invoke-virtual {v0, p1}, Lb/a/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lb/a/a/a/a/a/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/i;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lb/a/a/a/a/a/i;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lb/a/a/a/a/a/i;->a(I)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-super {p0, v2}, Lb/a/a/a/a/a/b;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v0, v6}, Lb/a/a/a/a/h;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v5, :cond_0

    const-string v2, "."

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".."

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v6

    :try_start_1
    iget-object v6, p0, Lb/a/a/a/a/a/i;->b:Lb/a/a/a/a/a/e;

    invoke-interface {v6, v2}, Lb/a/a/a/a/a/e;->a(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/a/a/a/a/h;->a(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    const-string v1, "<DIR>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v7}, Lb/a/a/a/a/h;->a(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/h;->a(J)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/a/a/a/h;->a(I)V

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/h;->a(J)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
