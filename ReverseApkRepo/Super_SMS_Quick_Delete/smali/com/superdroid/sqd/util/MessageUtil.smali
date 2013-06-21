.class public Lcom/superdroid/sqd/util/MessageUtil;
.super Ljava/lang/Object;
.source "MessageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 9
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 10
    .local v2, then:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 11
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 12
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 15
    const v0, 0x80b00

    .line 20
    .local v0, format_flags:I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 21
    or-int/lit8 v0, v0, 0x14

    .line 33
    :goto_0
    if-eqz p3, :cond_0

    .line 34
    or-int/lit8 v0, v0, 0x11

    .line 37
    :cond_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 22
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 24
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 27
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
