.class public final Lb/a/a/a/a/a/g;
.super Lb/a/a/a/a/a/b;


# instance fields
.field private b:I

.field private c:Lb/a/a/a/a/a/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/b;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/a/a/a/a/g;->b:I

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lb/a/a/a/a/a/b;->a(Lb/a/a/a/a/e;)V

    return-void
.end method

.method private a(Lb/a/a/a/a/h;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lb/a/a/a/a/a/g;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2}, Lb/a/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lb/a/a/a/a/a/g;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lb/a/a/a/a/a/g;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lb/a/a/a/a/a/g;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lb/a/a/a/a/h;->a(I)V

    :try_start_0
    invoke-super {p0, v3}, Lb/a/a/a/a/a/b;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb/a/a/a/a/h;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lb/a/a/a/a/e;
    .locals 4

    new-instance v0, Lb/a/a/a/a/e;

    const-string v1, "MVS"

    const-string v2, "yyyy/MM/dd HH:mm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lb/a/a/a/a/h;
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Lb/a/a/a/a/h;

    invoke-direct {v2}, Lb/a/a/a/a/h;-><init>()V

    iget v3, p0, Lb/a/a/a/a/a/g;->b:I

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lb/a/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lb/a/a/a/a/a/g;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lb/a/a/a/a/a/g;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    const-string v3, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Lb/a/a/a/a/h;->a(I)V

    :goto_0
    move v0, v1

    :cond_0
    :goto_1
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    const-string v3, "PO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PO-E"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {v2, v1}, Lb/a/a/a/a/h;->a(I)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lb/a/a/a/a/a/g;->b:I

    if-ne v3, v1, :cond_5

    invoke-direct {p0, v2, p1}, Lb/a/a/a/a/a/g;->a(Lb/a/a/a/a/h;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2, p1}, Lb/a/a/a/a/h;->a(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lb/a/a/a/a/h;->a(I)V

    :goto_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    iget v3, p0, Lb/a/a/a/a/a/g;->b:I

    if-ne v3, v5, :cond_6

    iget-object v3, p0, Lb/a/a/a/a/a/g;->c:Lb/a/a/a/a/a/o;

    invoke-virtual {v3, p1}, Lb/a/a/a/a/a/o;->a(Ljava/lang/String;)Lb/a/a/a/a/h;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_6
    iget v3, p0, Lb/a/a/a/a/a/g;->b:I

    if-ne v3, v4, :cond_8

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v4}, Lb/a/a/a/a/a/g;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OUTPUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, p1}, Lb/a/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lb/a/a/a/a/a/g;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lb/a/a/a/a/h;->a(I)V

    :goto_4
    move v0, v1

    goto :goto_1

    :cond_7
    move v1, v0

    goto :goto_4

    :cond_8
    iget v3, p0, Lb/a/a/a/a/a/g;->b:I

    if-ne v3, v6, :cond_0

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v6}, Lb/a/a/a/a/a/g;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OUTPUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, p1}, Lb/a/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lb/a/a/a/a/a/g;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lb/a/a/a/a/h;->a(I)V

    :goto_5
    move v0, v1

    goto/16 :goto_1

    :cond_9
    move v1, v0

    goto :goto_5

    :cond_a
    move-object v0, v2

    goto/16 :goto_2

    :cond_b
    move v0, v3

    goto/16 :goto_1
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Volume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string v1, "Dsname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    iput v3, p0, Lb/a/a/a/a/a/g;->b:I

    const-string v0, "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+[FV]\\S*\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

    invoke-super {p0, v0}, Lb/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    :goto_0
    iget v0, p0, Lb/a/a/a/a/a/g;->b:I

    if-eq v0, v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p1

    :cond_1
    const-string v1, "Name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const-string v1, "Id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lb/a/a/a/a/a/g;->b:I

    const-string v0, "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

    invoke-super {p0, v0}, Lb/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string v1, "total"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lb/a/a/a/a/a/g;->b:I

    new-instance v0, Lb/a/a/a/a/a/o;

    invoke-direct {v0}, Lb/a/a/a/a/a/o;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/a/g;->c:Lb/a/a/a/a/a/o;

    goto :goto_0

    :cond_3
    const-string v1, "Spool Files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    iput v4, p0, Lb/a/a/a/a/a/g;->b:I

    const-string v0, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

    invoke-super {p0, v0}, Lb/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const-string v1, "JOBNAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "JOBID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_5

    const/4 v0, 0x4

    iput v0, p0, Lb/a/a/a/a/a/g;->b:I

    const-string v0, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

    invoke-super {p0, v0}, Lb/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lb/a/a/a/a/a/g;->b:I

    goto :goto_0
.end method
