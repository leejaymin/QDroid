.class public final Lb/a/a/a/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/a/a;
.implements Lb/a/a/a/a/a/e;


# instance fields
.field private a:Ljava/text/SimpleDateFormat;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lb/a/a/a/a/a/f;->c:Z

    const-string v0, "MMM d yyyy"

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lb/a/a/a/a/a/f;->a:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lb/a/a/a/a/a/f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    const-string v0, "MMM d HH:mm"

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iget-object v1, p0, Lb/a/a/a/a/a/f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iget-object v2, p0, Lb/a/a/a/a/a/f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v7}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v2, 0x0

    iget-object v4, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lb/a/a/a/a/a/f;->c:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->add(II)V

    :cond_0
    iget-object v2, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {v1, v6, v0}, Ljava/util/Calendar;->add(II)V

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    iget-object v4, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    if-eqz v4, :cond_6

    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v7}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " yyyy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    iget-object v4, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v3, v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v7}, Ljava/text/ParsePosition;-><init>(I)V

    iget-object v2, p0, Lb/a/a/a/a/a/f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Timestamp could not be parsed with older or recent DateFormat"

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_6
    move-object v0, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public final a(Lb/a/a/a/a/e;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lb/a/a/a/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/a/a/e;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lb/a/a/a/a/e;->d(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lb/a/a/a/a/e;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    :goto_1
    invoke-virtual {p1}, Lb/a/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultFormatString cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lb/a/a/a/a/e;->c(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "en"

    invoke-static {v0}, Lb/a/a/a/a/e;->c(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v2, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v2, p0, Lb/a/a/a/a/a/f;->a:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lb/a/a/a/a/a/f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    invoke-virtual {p1}, Lb/a/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lb/a/a/a/a/a/f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lb/a/a/a/a/a/f;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_5
    invoke-virtual {p1}, Lb/a/a/a/a/e;->g()Z

    move-result v0

    iput-boolean v0, p0, Lb/a/a/a/a/a/f;->c:Z

    return-void
.end method
