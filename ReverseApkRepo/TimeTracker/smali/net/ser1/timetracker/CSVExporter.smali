.class public Lnet/ser1/timetracker/CSVExporter;
.super Ljava/lang/Object;
.source "CSVExporter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    const-string v2, "\""

    .line 12
    if-nez p0, :cond_0

    const-string v0, ""

    .line 17
    :goto_0
    return-object v0

    .line 13
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    :cond_1
    const-string v0, "\""

    const-string v0, "\"\""

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-object v0, p0

    .line 17
    goto :goto_0
.end method

.method public static exportRows(Ljava/io/OutputStream;Landroid/database/Cursor;)V
    .locals 11
    .parameter "o"
    .parameter "c"

    .prologue
    .line 36
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, p0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    .local v5, outputStream:Ljava/io/PrintStream;
    const-string v6, ""

    .line 38
    .local v6, prepend:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, columnNames:[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v8, :cond_2

    .line 44
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 45
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 46
    .local v1, d:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    :cond_0
    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 49
    const-string v6, ""

    .line 50
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    if-lt v3, v8, :cond_3

    .line 69
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 47
    if-nez v8, :cond_0

    .line 71
    .end local v1           #d:Ljava/util/Date;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #i:I
    :cond_1
    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 72
    return-void

    .line 39
    :cond_2
    aget-object v7, v0, v9

    .line 40
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 41
    invoke-static {v7}, Lnet/ser1/timetracker/CSVExporter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 42
    const-string v6, ","

    .line 39
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 51
    .end local v7           #s:Ljava/lang/String;
    .restart local v1       #d:Ljava/util/Date;
    .restart local v2       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v3       #i:I
    :cond_3
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 53
    aget-object v8, v0, v3

    const-string v9, "start"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 54
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 55
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, outValue:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 67
    const-string v6, ","

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v4           #outValue:Ljava/lang/String;
    :cond_4
    aget-object v8, v0, v3

    const-string v9, "end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 57
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 58
    const-string v4, ""

    .restart local v4       #outValue:Ljava/lang/String;
    goto :goto_2

    .line 60
    .end local v4           #outValue:Ljava/lang/String;
    :cond_5
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 61
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #outValue:Ljava/lang/String;
    goto :goto_2

    .line 64
    .end local v4           #outValue:Ljava/lang/String;
    :cond_6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/ser1/timetracker/CSVExporter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #outValue:Ljava/lang/String;
    goto :goto_2
.end method

.method public static exportRows(Ljava/io/OutputStream;[[Ljava/lang/String;)V
    .locals 10
    .parameter "o"
    .parameter "rows"

    .prologue
    const/4 v9, 0x0

    .line 22
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, p0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 23
    .local v2, outputStream:Ljava/io/PrintStream;
    array-length v4, p1

    move v5, v9

    :goto_0
    if-lt v5, v4, :cond_0

    .line 32
    return-void

    .line 23
    :cond_0
    aget-object v1, p1, v5

    .line 24
    .local v1, cols:[Ljava/lang/String;
    const-string v3, ""

    .line 25
    .local v3, prepend:Ljava/lang/String;
    array-length v6, v1

    move v7, v9

    :goto_1
    if-lt v7, v6, :cond_1

    .line 30
    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 23
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_1
    aget-object v0, v1, v7

    .line 26
    .local v0, col:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lnet/ser1/timetracker/CSVExporter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 28
    const-string v3, ","

    .line 25
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
