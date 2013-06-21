.class Lcom/elsdoerfer/keepscore/Setup$1;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Setup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elsdoerfer/keepscore/Setup;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Setup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Setup$1;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 16
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 117
    sget-object v11, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_LAST_PLAYED_AT_KEY:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 118
    .local v6, lastPlayedIndex:I
    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_5

    .line 119
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long v9, v11, v13

    .line 120
    .local v9, now:J
    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long v4, v11, v13

    .line 123
    .local v4, lastPlayed:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elsdoerfer/keepscore/Setup$1;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    move-object v11, v0

    const v12, 0x7f05000e

    invoke-virtual {v11, v12}, Lcom/elsdoerfer/keepscore/Setup;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, nice:Ljava/lang/String;
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-lez v11, :cond_0

    .line 125
    sub-long v11, v9, v4

    const-wide/16 v13, 0x3c

    div-long/2addr v11, v13

    long-to-int v7, v11

    .line 126
    .local v7, minutes:I
    const/16 v11, 0x3c

    if-lt v7, v11, :cond_3

    .line 127
    div-int/lit8 v3, v7, 0x3c

    .line 128
    .local v3, hours:I
    const/16 v11, 0x18

    if-lt v3, v11, :cond_2

    .line 129
    div-int/lit8 v2, v3, 0x18

    .line 130
    .local v2, days:I
    const/16 v11, 0x1e

    if-le v2, v11, :cond_1

    .line 131
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "dd. MMM yyyy, HH:mm"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 146
    .end local v2           #days:I
    .end local v3           #hours:I
    .end local v7           #minutes:I
    :cond_0
    :goto_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/4 v11, 0x1

    .line 149
    .end local v4           #lastPlayed:J
    .end local v8           #nice:Ljava/lang/String;
    .end local v9           #now:J
    :goto_1
    return v11

    .line 135
    .restart local v2       #days:I
    .restart local v3       #hours:I
    .restart local v4       #lastPlayed:J
    .restart local v7       #minutes:I
    .restart local v8       #nice:Ljava/lang/String;
    .restart local v9       #now:J
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elsdoerfer/keepscore/Setup$1;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    move-object v11, v0

    const v12, 0x7f050010

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/elsdoerfer/keepscore/Setup;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 138
    .end local v2           #days:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elsdoerfer/keepscore/Setup$1;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    move-object v11, v0

    const v12, 0x7f050011

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/elsdoerfer/keepscore/Setup;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 140
    .end local v3           #hours:I
    :cond_3
    if-nez v7, :cond_4

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elsdoerfer/keepscore/Setup$1;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    move-object v11, v0

    const v12, 0x7f05000f

    invoke-virtual {v11, v12}, Lcom/elsdoerfer/keepscore/Setup;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 143
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elsdoerfer/keepscore/Setup$1;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    move-object v11, v0

    const v12, 0x7f050012

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/elsdoerfer/keepscore/Setup;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 149
    .end local v4           #lastPlayed:J
    .end local v7           #minutes:I
    .end local v8           #nice:Ljava/lang/String;
    .end local v9           #now:J
    :cond_5
    const/4 v11, 0x0

    goto :goto_1
.end method
