.class public Lcom/wolfram/android/alpha/activity/HistoryActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "HistoryActivity.java"


# static fields
.field public static final HISTORY_ASSUMPTIONS_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.history_assumptions"

.field public static final HISTORY_INPUT_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.history_input"

.field public static final HISTORY_MONTH_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.is_months_history"

.field public static final HISTORY_QUERY_RESULT:Ljava/lang/String; = "com.wolfram.android.alpha.history_queryresult"

.field private static dateFormatter:Ljava/text/SimpleDateFormat;

.field private static logger:Ljava/util/logging/Logger;

.field private static monthFormatter:Ljava/text/SimpleDateFormat;

.field public static queryHist:Lcom/wolfram/alpha/WAQuery;

.field public static queryResultHist:Lcom/wolfram/alpha/WAQueryResult;

.field private static timeFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private history:Lcom/wolfram/android/alpha/History;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "com.wolfram.android.alpha.acitivity.HistoryActivity"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/HistoryActivity;->logger:Ljava/util/logging/Logger;

    .line 273
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/wolfram/android/alpha/activity/HistoryActivity;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 274
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/wolfram/android/alpha/activity/HistoryActivity;->timeFormatter:Ljava/text/SimpleDateFormat;

    .line 275
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/wolfram/android/alpha/activity/HistoryActivity;->monthFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wolfram/android/alpha/activity/HistoryActivity;)Lcom/wolfram/android/alpha/History;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/HistoryActivity;->history:Lcom/wolfram/android/alpha/History;

    return-object v0
.end method

.method private createDayView(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 20
    .parameter "inflater"
    .parameter
    .parameter "assumptionsLabel"
    .parameter "assumptionsLabelPlural"
    .parameter "isToday"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, oneDaysHistory:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    const v16, 0x7f030040

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 196
    .local v7, historyDayView:Landroid/widget/LinearLayout;
    const v16, 0x7f0e004d

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 197
    .local v6, dateHeader:Landroid/widget/TextView;
    if-eqz p5, :cond_0

    const-string v16, "Today"

    .end local p0
    :goto_0
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 199
    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wolfram/android/alpha/HistoryRecord;

    .line 200
    .local v11, hr:Lcom/wolfram/android/alpha/HistoryRecord;
    const v16, 0x7f030044

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 201
    .local v8, historyQueryView:Landroid/widget/RelativeLayout;
    const v16, 0x7f0e001d

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 202
    .local v14, queryTextView:Landroid/widget/TextView;
    move-object v0, v11

    iget-object v0, v0, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 205
    const v16, 0x7f0e004f

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    move-object v0, v11

    iget v0, v0, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->formatTime(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const v16, 0x7f0e0050

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 209
    .local v9, history_assumptions_layout:Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    .line 210
    .local v10, history_query_view_assumptions_textview:Landroid/widget/TextView;
    move-object v0, v11

    iget-object v0, v0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions_labels:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 211
    move-object v0, v11

    iget-object v0, v0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions_labels:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 212
    .local v5, assumption_label:Ljava/lang/String;
    const v16, 0x7f030045

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10           #history_query_view_assumptions_textview:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 213
    .restart local v10       #history_query_view_assumptions_textview:Landroid/widget/TextView;
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 197
    .end local v5           #assumption_label:Ljava/lang/String;
    .end local v8           #historyQueryView:Landroid/widget/RelativeLayout;
    .end local v9           #history_assumptions_layout:Landroid/widget/LinearLayout;
    .end local v10           #history_query_view_assumptions_textview:Landroid/widget/TextView;
    .end local v11           #hr:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v12           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #queryTextView:Landroid/widget/TextView;
    .restart local p0
    :cond_0
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/HistoryRecord;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->formatDate(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 218
    .restart local v8       #historyQueryView:Landroid/widget/RelativeLayout;
    .restart local v9       #history_assumptions_layout:Landroid/widget/LinearLayout;
    .restart local v10       #history_query_view_assumptions_textview:Landroid/widget/TextView;
    .restart local v11       #hr:Lcom/wolfram/android/alpha/HistoryRecord;
    .restart local v12       #i:I
    .restart local v14       #queryTextView:Landroid/widget/TextView;
    :cond_1
    move-object v0, v11

    iget-object v0, v0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 222
    const/16 v16, 0xc

    const/16 v17, 0xc

    const/16 v18, 0xc

    const/16 v19, 0x0

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    if-eqz v10, :cond_2

    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 228
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 229
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v15, separatorLineParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v16, 0x3

    const v17, 0x7f0e0050

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    const v16, 0x7f03003d

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .end local v15           #separatorLineParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 235
    .end local v8           #historyQueryView:Landroid/widget/RelativeLayout;
    .end local v9           #history_assumptions_layout:Landroid/widget/LinearLayout;
    .end local v10           #history_query_view_assumptions_textview:Landroid/widget/TextView;
    .end local v11           #hr:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v14           #queryTextView:Landroid/widget/TextView;
    :cond_4
    return-object v7
.end method

.method private createMonthButton(Landroid/view/LayoutInflater;Ljava/util/List;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, oneMonthsHistory:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    const v2, 0x7f030042

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, monthButton:Landroid/view/View;
    const v2, 0x7f0e004e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 243
    .local v1, monthTextView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/HistoryRecord;

    iget v2, p0, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    invoke-static {v2}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->formatMonth(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 245
    return-object v0
.end method

.method public static fillIntentToLaunchHistoryItem(Lcom/wolfram/android/alpha/HistoryRecord;Z)V
    .locals 4
    .parameter "hr"
    .parameter "isHistory"

    .prologue
    .line 292
    if-nez p1, :cond_1

    sget-object v2, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 293
    sget-object v2, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 294
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wolfram/android/alpha/HistoryRecord;

    .line 296
    .local v1, nextRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    iget-object v2, v1, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    iget-object v3, p0, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    iget-object v3, p0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, v1, Lcom/wolfram/android/alpha/HistoryRecord;->query:Lcom/wolfram/alpha/WAQuery;

    iput-object v2, p0, Lcom/wolfram/android/alpha/HistoryRecord;->query:Lcom/wolfram/alpha/WAQuery;

    .line 298
    iget-object v2, v1, Lcom/wolfram/android/alpha/HistoryRecord;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    iput-object v2, p0, Lcom/wolfram/android/alpha/HistoryRecord;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 303
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    .end local v1           #nextRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    :cond_1
    iget-object v2, p0, Lcom/wolfram/android/alpha/HistoryRecord;->query:Lcom/wolfram/alpha/WAQuery;

    sput-object v2, Lcom/wolfram/android/alpha/activity/HistoryActivity;->queryHist:Lcom/wolfram/alpha/WAQuery;

    .line 304
    iget-object v2, p0, Lcom/wolfram/android/alpha/HistoryRecord;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    sput-object v2, Lcom/wolfram/android/alpha/activity/HistoryActivity;->queryResultHist:Lcom/wolfram/alpha/WAQueryResult;

    .line 305
    return-void
.end method

.method private static formatDate(I)Ljava/lang/String;
    .locals 6
    .parameter "timeInSeconds"

    .prologue
    .line 278
    sget-object v0, Lcom/wolfram/android/alpha/activity/HistoryActivity;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatMonth(I)Ljava/lang/String;
    .locals 6
    .parameter "timeInSeconds"

    .prologue
    .line 286
    sget-object v0, Lcom/wolfram/android/alpha/activity/HistoryActivity;->monthFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatTime(I)Ljava/lang/String;
    .locals 6
    .parameter "timeInSeconds"

    .prologue
    .line 282
    sget-object v0, Lcom/wolfram/android/alpha/activity/HistoryActivity;->timeFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHistoryForDay([Lcom/wolfram/android/alpha/HistoryRecord;II)Ljava/util/List;
    .locals 10
    .parameter "fullHistory"
    .parameter "offsetFromToday"
    .parameter "startOfTodayInSeconds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const v9, 0x15180

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v2, historyForDay:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    mul-int v8, p1, v9

    add-int v7, p2, v8

    .line 258
    .local v7, startOfDesiredDayInSeconds:I
    add-int v1, v7, v9

    .line 261
    .local v1, endOfDesiredDayInSeconds:I
    move-object v0, p0

    .local v0, arr$:[Lcom/wolfram/android/alpha/HistoryRecord;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 262
    .local v3, hr:Lcom/wolfram/android/alpha/HistoryRecord;
    iget v6, v3, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    .line 263
    .local v6, queryDateInSeconds:I
    if-lt v6, v1, :cond_0

    .line 261
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    :cond_0
    if-ge v6, v7, :cond_2

    .line 269
    .end local v3           #hr:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v6           #queryDateInSeconds:I
    :cond_1
    return-object v2

    .line 267
    .restart local v3       #hr:Lcom/wolfram/android/alpha/HistoryRecord;
    .restart local v6       #queryDateInSeconds:I
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private populateForFullHistory()V
    .locals 29

    .prologue
    .line 79
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getHistory()Lcom/wolfram/android/alpha/History;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/HistoryActivity;->history:Lcom/wolfram/android/alpha/History;

    .line 81
    const v3, 0x7f0e004c

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 82
    .local v15, historyViewPanel:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v4

    .line 85
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c005e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, assumptionsLabel:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c005f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, assumptionsLabelPlural:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/HistoryActivity;->history:Lcom/wolfram/android/alpha/History;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/History;->getFullHistory()[Lcom/wolfram/android/alpha/HistoryRecord;

    move-result-object v13

    .line 91
    .local v13, fullHistory:[Lcom/wolfram/android/alpha/HistoryRecord;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .line 92
    .local v22, rightNow:Ljava/util/Calendar;
    const/16 v3, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 93
    const/16 v3, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 94
    const/16 v3, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 95
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v24, v0

    .line 97
    .local v24, startOfTodayInSeconds:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    const/4 v3, -0x7

    move/from16 v0, v17

    move v1, v3

    if-lt v0, v1, :cond_2

    .line 98
    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->getHistoryForDay([Lcom/wolfram/android/alpha/HistoryRecord;II)Ljava/util/List;

    move-result-object v5

    .line 99
    .local v5, oneDayHistory:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 100
    if-nez v17, :cond_1

    const/4 v3, 0x1

    move v8, v3

    :goto_1
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->createDayView(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v14

    .line 101
    .local v14, historyDayView:Landroid/view/View;
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    .end local v14           #historyDayView:Landroid/view/View;
    :cond_0
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 100
    :cond_1
    const/4 v3, 0x0

    move v8, v3

    goto :goto_1

    .line 105
    .end local v5           #oneDayHistory:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    :cond_2
    array-length v3, v13

    if-lez v3, :cond_7

    .line 107
    const v3, 0x7f030040

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 108
    .local v9, allMonthsView:Landroid/widget/LinearLayout;
    const v3, 0x7f0e004d

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 109
    .local v12, dateHeader:Landroid/widget/TextView;
    const v3, 0x7f0c0060

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(I)V

    .line 110
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v20, oneMonthsHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    move-object/from16 v11, v22

    .line 113
    .local v11, currentMonth:Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v5, 0x1

    invoke-virtual {v11, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 114
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v23, v0

    .line 115
    .local v23, startOfCurrentMonthInSeconds:I
    move-object v10, v13

    .local v10, arr$:[Lcom/wolfram/android/alpha/HistoryRecord;
    move-object v0, v10

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v16, v10, v18

    .line 116
    .local v16, hr:Lcom/wolfram/android/alpha/HistoryRecord;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    move/from16 v21, v0

    .line 117
    .local v21, queryTimeInSeconds:I
    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 118
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 123
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->createMonthButton(Landroid/view/LayoutInflater;Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    :cond_4
    new-instance v20, Ljava/util/ArrayList;

    .end local v20           #oneMonthsHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .restart local v20       #oneMonthsHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x3e8

    mul-long v25, v25, v27

    move-object v0, v11

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 127
    const/4 v3, 0x5

    const/4 v5, 0x1

    invoke-virtual {v11, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v3, 0xb

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v3, 0xc

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v3, 0xd

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v23, v0

    .line 132
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 135
    .end local v16           #hr:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v21           #queryTimeInSeconds:I
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 136
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->createMonthButton(Landroid/view/LayoutInflater;Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    :cond_6
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    .end local v9           #allMonthsView:Landroid/widget/LinearLayout;
    .end local v10           #arr$:[Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v11           #currentMonth:Ljava/util/Calendar;
    .end local v12           #dateHeader:Landroid/widget/TextView;
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v20           #oneMonthsHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    .end local v23           #startOfCurrentMonthInSeconds:I
    :cond_7
    return-void
.end method

.method private populateForMonthsHistory()V
    .locals 19

    .prologue
    .line 145
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->retrieveMonthsHistory()Ljava/util/List;

    move-result-object v11

    .line 147
    .local v11, oneMonthHistory:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    const v2, 0x7f0e004c

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 148
    .local v8, historyViewPanel:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v3

    .line 151
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c005e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, assumptionsLabel:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c005f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, assumptionsLabelPlural:Ljava/lang/String;
    const v2, 0x7f0e0049

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wolfram/android/alpha/HistoryRecord;

    iget v4, v4, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    invoke-static {v4}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->formatMonth(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v2, 0x7f0e004a

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 160
    .local v14, startOfDay:Ljava/util/Calendar;
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wolfram/android/alpha/HistoryRecord;

    iget v2, v2, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    int-to-long v15, v2

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    const/16 v2, 0xb

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 163
    const/16 v2, 0xd

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 164
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    long-to-int v13, v15

    .line 165
    .local v13, startOfCurrentDayInSeconds:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v4, oneDayHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wolfram/android/alpha/HistoryRecord;

    .line 167
    .local v9, hr:Lcom/wolfram/android/alpha/HistoryRecord;
    iget v12, v9, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    .line 168
    .local v12, queryTimeInSeconds:I
    if-le v12, v13, :cond_0

    .line 169
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 174
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->createDayView(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #oneDayHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .restart local v4       #oneDayHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    int-to-long v15, v12

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    const/16 v2, 0xb

    const/4 v7, 0x0

    invoke-virtual {v14, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 180
    const/16 v2, 0xc

    const/4 v7, 0x0

    invoke-virtual {v14, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 181
    const/16 v2, 0xd

    const/4 v7, 0x0

    invoke-virtual {v14, v2, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 184
    .end local v9           #hr:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v12           #queryTimeInSeconds:I
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 185
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->createDayView(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    :cond_3
    return-void
.end method


# virtual methods
.method public clearButtonClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter "clearButton"

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->showDialog(I)V

    .line 341
    return-void
.end method

.method public monthClickHandler(Landroid/view/View;)V
    .locals 4
    .parameter "monthView"

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 330
    .local v1, oneMonthsHistory:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->storeMonthsHistory(Ljava/util/List;)V

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/wolfram/android/alpha/activity/HistoryActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.wolfram.android.alpha.is_months_history"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 335
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 369
    invoke-super {p0, p1, p2, p3}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onActivityResult(IILandroid/content/Intent;)V

    .line 372
    if-nez p3, :cond_0

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->setResult(ILandroid/content/Intent;)V

    .line 378
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f03003e

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->setContentView(I)V

    .line 59
    :try_start_0
    sget-object v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    const v3, 0x7f0e004b

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, LjQaa7YP/X8ZGZLi5l5;->EhwFYCDu5qmH(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.wolfram.android.alpha.is_months_history"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 69
    .local v1, isMonthsHistory:Z
    if-eqz v1, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->populateForMonthsHistory()V

    .line 74
    :goto_1
    return-void

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->populateForFullHistory()V

    goto :goto_1

    .line 61
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isMonthsHistory:Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 347
    new-instance v2, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c005b

    invoke-virtual {v2, v3}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setMessage(I)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c005c

    new-instance v4, Lcom/wolfram/android/alpha/activity/HistoryActivity$2;

    invoke-direct {v4, p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity$2;-><init>(Lcom/wolfram/android/alpha/activity/HistoryActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c005d

    new-instance v4, Lcom/wolfram/android/alpha/activity/HistoryActivity$1;

    invoke-direct {v4, p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity$1;-><init>(Lcom/wolfram/android/alpha/activity/HistoryActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v0

    .line 360
    .local v0, customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->create()Lcom/wolfram/android/alpha/view/CustomDialog;

    move-result-object v1

    .line 361
    .local v1, dialog:Landroid/app/Dialog;
    return-object v1
.end method

.method public queryClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "queryView"

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/HistoryRecord;

    .line 315
    .local v0, hr:Lcom/wolfram/android/alpha/HistoryRecord;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->fillIntentToLaunchHistoryItem(Lcom/wolfram/android/alpha/HistoryRecord;Z)V

    .line 317
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->setResult(ILandroid/content/Intent;)V

    .line 318
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->finish()V

    .line 319
    return-void
.end method
