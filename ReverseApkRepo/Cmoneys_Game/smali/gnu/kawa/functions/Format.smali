.class public Lgnu/kawa/functions/Format;
.super Lgnu/mapping/ProcedureN;
.source "Format.java"


# static fields
.field public static final format:Lgnu/kawa/functions/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lgnu/kawa/functions/Format;

    invoke-direct {v0}, Lgnu/kawa/functions/Format;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    .line 10
    sget-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    const-string v1, "format"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Format;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static varargs format([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    aget-object v1, p0, v4

    .line 86
    .local v1, port_arg:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    .line 88
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    invoke-static {v2, p0, v3}, Lgnu/kawa/functions/Format;->format(Lgnu/mapping/OutPort;[Ljava/lang/Object;I)V

    .line 89
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 122
    .end local v1           #port_arg:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 91
    .restart local v1       #port_arg:Ljava/lang/Object;
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1

    .line 93
    invoke-static {p0, v3}, Lgnu/kawa/functions/Format;->formatToString([Ljava/lang/Object;I)Lgnu/lists/FString;

    move-result-object v2

    goto :goto_0

    .line 95
    :cond_1
    instance-of v2, v1, Ljava/text/MessageFormat;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_3

    .line 103
    :cond_2
    invoke-static {p0, v4}, Lgnu/kawa/functions/Format;->formatToString([Ljava/lang/Object;I)Lgnu/lists/FString;

    move-result-object v2

    goto :goto_0

    .line 105
    :cond_3
    instance-of v2, v1, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_4

    .line 107
    check-cast v1, Lgnu/mapping/OutPort;

    .end local v1           #port_arg:Ljava/lang/Object;
    invoke-static {v1, p0, v3}, Lgnu/kawa/functions/Format;->format(Lgnu/mapping/OutPort;[Ljava/lang/Object;I)V

    .line 108
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 110
    .restart local v1       #port_arg:Ljava/lang/Object;
    :cond_4
    instance-of v2, v1, Ljava/io/Writer;

    if-eqz v2, :cond_5

    .line 112
    new-instance v0, Lgnu/mapping/OutPort;

    check-cast v1, Ljava/io/Writer;

    .end local v1           #port_arg:Ljava/lang/Object;
    invoke-direct {v0, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 113
    .local v0, port:Lgnu/mapping/OutPort;
    invoke-static {v0, p0, v3}, Lgnu/kawa/functions/Format;->format(Lgnu/mapping/OutPort;[Ljava/lang/Object;I)V

    .line 114
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->closeThis()V

    .line 115
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 117
    .end local v0           #port:Lgnu/mapping/OutPort;
    .restart local v1       #port_arg:Ljava/lang/Object;
    :cond_5
    instance-of v2, v1, Ljava/io/OutputStream;

    if-eqz v2, :cond_6

    .line 119
    new-instance v0, Lgnu/mapping/OutPort;

    check-cast v1, Ljava/io/OutputStream;

    .end local v1           #port_arg:Ljava/lang/Object;
    invoke-direct {v0, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    .line 120
    .restart local v0       #port:Lgnu/mapping/OutPort;
    invoke-static {v0, p0, v3}, Lgnu/kawa/functions/Format;->format(Lgnu/mapping/OutPort;[Ljava/lang/Object;I)V

    .line 121
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->closeThis()V

    .line 122
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 125
    .end local v0           #port:Lgnu/mapping/OutPort;
    .restart local v1       #port_arg:Ljava/lang/Object;
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad first argument to format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static format(Lgnu/mapping/OutPort;[Ljava/lang/Object;I)V
    .locals 9
    .parameter "dst"
    .parameter "args"
    .parameter "arg_offset"

    .prologue
    const/4 v7, 0x0

    .line 14
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, arg_offset:I
    aget-object v3, p1, p2

    .line 15
    .local v3, format:Ljava/lang/Object;
    array-length v6, p1

    sub-int/2addr v6, v1

    new-array v5, v6, [Ljava/lang/Object;

    .line 16
    .local v5, vals:[Ljava/lang/Object;
    array-length v6, v5

    invoke-static {p1, v1, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    instance-of v6, v3, Ljava/text/MessageFormat;

    if-eqz v6, :cond_0

    .line 19
    move-object v0, v3

    check-cast v0, Ljava/text/MessageFormat;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, out:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 35
    .end local v4           #out:Ljava/lang/String;
    :goto_0
    return-void

    .line 24
    :cond_0
    instance-of v6, v3, Lgnu/text/ReportFormat;

    if-nez v6, :cond_1

    .line 25
    sget-object v6, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    invoke-virtual {v6, v3}, Lgnu/kawa/functions/ParseFormat;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 28
    :cond_1
    :try_start_0
    move-object v0, v3

    check-cast v0, Lgnu/text/ReportFormat;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, p0, v8}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 32
    .local v2, ex:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static formatToString(CLjava/lang/Object;[Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 7
    .parameter "style"
    .parameter "fmt"
    .parameter "args"

    .prologue
    .line 55
    invoke-static {p1, p0}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object v3

    .line 56
    .local v3, rfmt:Lgnu/text/ReportFormat;
    new-instance v2, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v2}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 59
    .local v2, port:Lgnu/mapping/CharArrayOutPort;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v4, v2, v5}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    invoke-virtual {v2}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object v0

    .line 66
    .local v0, chars:[C
    invoke-virtual {v2}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 67
    new-instance v4, Lgnu/lists/FString;

    invoke-direct {v4, v0}, Lgnu/lists/FString;-><init>([C)V

    return-object v4

    .line 61
    .end local v0           #chars:[C
    :catch_0
    move-exception v1

    .line 63
    .local v1, ex:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static formatToString([Ljava/lang/Object;I)Lgnu/lists/FString;
    .locals 3
    .parameter "args"
    .parameter "arg_offset"

    .prologue
    .line 39
    new-instance v1, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v1}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 40
    .local v1, port:Lgnu/mapping/CharArrayOutPort;
    invoke-static {v1, p0, p1}, Lgnu/kawa/functions/Format;->format(Lgnu/mapping/OutPort;[Ljava/lang/Object;I)V

    .line 41
    invoke-virtual {v1}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object v0

    .line 42
    .local v0, chars:[C
    invoke-virtual {v1}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 43
    new-instance v2, Lgnu/lists/FString;

    invoke-direct {v2, v0}, Lgnu/lists/FString;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 73
    invoke-static {p1}, Lgnu/kawa/functions/Format;->format([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
