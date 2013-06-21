.class public Lorg/twilightfantasy/tpgusagemeter/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentChargesIDFromUsageIndexResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "response"

    .prologue
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    const-string p0, "charges for the period "

    .line 48
    .local p0, beforeDateString:Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #beforeDateString:Ljava/lang/String;
    add-int/2addr v0, p0

    .line 49
    .local v0, startIndex:I
    const/4 p0, -0x1

    if-ne v0, p0, :cond_0

    .line 50
    const/4 p0, 0x0

    .line 93
    .end local v0           #startIndex:I
    :goto_0
    return-object p0

    .line 51
    .restart local v0       #startIndex:I
    :cond_0
    const-string p0, " "

    invoke-virtual {v2, p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .line 52
    .local p0, endIndex:I
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 53
    const/4 p0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v2, v0, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, dateString:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string p0, "yyyy-MM-dd"

    .end local p0           #endIndex:I
    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, df:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 59
    .local p0, cal:Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 60
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .end local p0           #cal:Ljava/util/Calendar;
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 63
    .local p0, currentDateString:Ljava/lang/String;
    const-string v3, "chg_id="

    .line 65
    .local v3, topString:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, index:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 67
    const/4 p0, 0x0

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    .end local p0           #currentDateString:Ljava/lang/String;
    if-gez p0, :cond_4

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v2, v1, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    .line 75
    .end local v1           #index:I
    .local p0, index:I
    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    .line 76
    .end local v0           #dateString:Ljava/lang/String;
    const/4 p0, 0x0

    goto :goto_0

    .line 78
    :cond_3
    const-string v0, "2nd last"

    .line 84
    .local v0, res:Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .end local v0           #res:Ljava/lang/String;
    move-result v1

    add-int/2addr p0, v1

    invoke-virtual {v2, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 87
    .end local p0           #index:I
    const-string p0, "\""

    .line 88
    .local p0, bottomString:Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 89
    .local p0, index:I
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    .line 90
    const/4 p0, 0x0

    goto :goto_0

    .line 81
    .end local p0           #index:I
    .local v0, dateString:Ljava/lang/String;
    .restart local v1       #index:I
    :cond_4
    const-string p0, "last"

    .local p0, res:Ljava/lang/String;
    move-object v0, p0

    .end local p0           #res:Ljava/lang/String;
    .local v0, res:Ljava/lang/String;
    move p0, v1

    .end local v1           #index:I
    .local p0, index:I
    goto :goto_1

    .line 91
    .end local v0           #res:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getPlanIDFromLoginResponse(Ljava/lang/String;)I
    .locals 10
    .parameter "response"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 19
    .local v5, x:I
    :goto_0
    const-string v4, "viewdetails|"

    .line 20
    .local v4, topString:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 21
    .local v1, index:I
    if-ne v1, v8, :cond_1

    .line 38
    :cond_0
    return v5

    .line 23
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v3, v9, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 26
    const-string v0, "\""

    .line 27
    .local v0, bottomString:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 28
    if-eq v1, v8, :cond_0

    .line 31
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v3, v9, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, plan:Ljava/lang/String;
    sget-object v6, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v6, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSummaryList:Ljava/util/ArrayList;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 16
    goto :goto_0
.end method

.method public static getUsageSummaryFromCurrentChargesResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string v9, ""

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    const-string v5, "Phone number"

    .line 102
    .local v5, topString:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, index:I
    if-ne v1, v7, :cond_0

    move-object v6, v8

    .line 151
    :goto_0
    return-object v6

    .line 105
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, "<TABLE border=1 rules=all cellpadding=2>"

    .line 109
    .local v0, bottomString:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 110
    if-ne v1, v7, :cond_1

    .line 113
    const-string v0, "(There are no charges for this period)"

    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 115
    if-ne v1, v7, :cond_1

    move-object v6, v8

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 121
    const-string v5, "<STRONG>Service Address</STRONG>"

    .line 122
    const-string v0, "Charges for the period"

    .line 123
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 124
    if-ne v1, v7, :cond_2

    move-object v6, v8

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 128
    .local v2, index2:I
    if-ne v2, v7, :cond_3

    move-object v6, v8

    .line 129
    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 134
    const-string v5, "Cap remaining: "

    .line 135
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 136
    const-string v6, "<h3>"

    invoke-virtual {v3, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v0, "&"

    .line 139
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 140
    const-string v6, "</h3>"

    invoke-virtual {v3, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, theString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "&nbsp;&nbsp;"

    const-string v8, ""

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    const-string v6, "\\<A[^>]*>.*</A[^>]*>"

    const-string v7, ""

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    const-string v6, "\\</TD></TR></TABLE>"

    const-string v7, ""

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 151
    goto :goto_0
.end method
