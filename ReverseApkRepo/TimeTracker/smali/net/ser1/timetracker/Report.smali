.class public Lnet/ser1/timetracker/Report;
.super Landroid/app/Activity;
.source "Report.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DKDKYELLOW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DKYELLOW:I = 0x0

.field private static final FORMAT:Ljava/lang/String; = "%02d:%02d"

.field private static final PAD:I = 0x2

.field private static final RPAD:I = 0x4

.field static final SDCARD:Ljava/lang/String; = "/sdcard/"

.field private static final TITLE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final WEEK_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private dateViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/ser1/timetracker/DBHelper;

.field private decimalTime:Z

.field private exportMessage:Ljava/lang/String;

.field private exportSucceed:Landroid/app/AlertDialog;

.field private startDay:I

.field private weekEnd:Ljava/util/Calendar;

.field private weekStart:Ljava/util/Calendar;

.field private weekView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x4b

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "w"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/ser1/timetracker/Report;->WEEK_FORMAT:Ljava/text/SimpleDateFormat;

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, MMM d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/ser1/timetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 248
    invoke-static {v2, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/ser1/timetracker/Report;->DKDKYELLOW:I

    .line 290
    const/16 v0, 0x96

    invoke-static {v0, v2, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/ser1/timetracker/Report;->DKYELLOW:I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lnet/ser1/timetracker/Report;->dateViews:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ser1/timetracker/Report;->decimalTime:Z

    .line 47
    return-void
.end method

.method private createHeader(Landroid/widget/TableLayout;)V
    .locals 12
    .parameter "mainReport"

    .prologue
    .line 292
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 293
    .local v5, row:Landroid/widget/TableRow;
    new-instance v8, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v8}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {p1, v5, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, blank:Landroid/widget/TextView;
    const v8, 0x7f060001

    invoke-virtual {p0, v8}, Lnet/ser1/timetracker/Report;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 298
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 299
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v5, v0, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    const/4 v8, 0x7

    new-array v7, v8, [I

    .line 302
    .local v7, weekDays:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v8, 0x7

    if-lt v4, v8, :cond_0

    .line 306
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 307
    .local v1, calRef:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 308
    .local v2, header:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 310
    .local v3, headerString:Ljava/lang/String;
    const/4 v4, 0x0

    :goto_1
    const/4 v8, 0x7

    if-lt v4, v8, :cond_1

    .line 322
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 323
    .local v6, total:Landroid/widget/TextView;
    const v8, 0x7f060046

    invoke-virtual {p0, v8}, Lnet/ser1/timetracker/Report;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x4

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 325
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 326
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 327
    sget v8, Lnet/ser1/timetracker/Report;->DKYELLOW:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 328
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v8}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v5, v6, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    return-void

    .line 303
    .end local v1           #calRef:Ljava/util/Calendar;
    .end local v2           #header:Landroid/widget/TextView;
    .end local v3           #headerString:Ljava/lang/String;
    .end local v6           #total:Landroid/widget/TextView;
    :cond_0
    iget-object v8, p0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    add-int/2addr v8, v4

    rem-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v4

    .line 302
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 311
    .restart local v1       #calRef:Ljava/util/Calendar;
    .restart local v2       #header:Landroid/widget/TextView;
    .restart local v3       #headerString:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x7

    aget v9, v7, v4

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 312
    new-instance v2, Landroid/widget/TextView;

    .end local v2           #header:Landroid/widget/TextView;
    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 313
    .restart local v2       #header:Landroid/widget/TextView;
    const-string v8, "%1$ta"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 316
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 317
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 318
    rem-int/lit8 v8, v4, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const v8, -0xbbbbbc

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 319
    :cond_2
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v8}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v5, v2, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private createReport(Landroid/widget/TableLayout;)V
    .locals 21
    .parameter "mainReport"

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "tasks"

    sget-object v7, Lnet/ser1/timetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "name"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 333
    .local v14, c:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 336
    .local v19, tid:I
    const/16 v5, 0x8

    new-array v13, v5, [Landroid/widget/TextView;

    .line 338
    .local v13, arryForDay:[Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->dateViews:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v17, Landroid/widget/TableRow;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 341
    .local v17, row:Landroid/widget/TableRow;
    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v5}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    .local v18, taskName:Landroid/widget/TextView;
    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x2

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 346
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    const/4 v5, 0x7

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_2

    .line 356
    new-instance v20, Landroid/widget/TextView;

    invoke-direct/range {v20 .. v21}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 357
    .local v20, total:Landroid/widget/TextView;
    const/4 v5, 0x7

    aput-object v20, v13, v5

    .line 358
    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x2

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 359
    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v6, 0x2

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 360
    sget v5, Lnet/ser1/timetracker/Report;->DKYELLOW:I

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 361
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 334
    if-nez v5, :cond_0

    .line 364
    .end local v13           #arryForDay:[Landroid/widget/TextView;
    .end local v16           #i:I
    .end local v17           #row:Landroid/widget/TableRow;
    .end local v18           #taskName:Landroid/widget/TextView;
    .end local v19           #tid:I
    .end local v20           #total:Landroid/widget/TextView;
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 365
    return-void

    .line 349
    .restart local v13       #arryForDay:[Landroid/widget/TextView;
    .restart local v16       #i:I
    .restart local v17       #row:Landroid/widget/TableRow;
    .restart local v18       #taskName:Landroid/widget/TextView;
    .restart local v19       #tid:I
    :cond_2
    new-instance v15, Landroid/widget/TextView;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 350
    .local v15, dayTime:Landroid/widget/TextView;
    aput-object v15, v13, v16

    .line 351
    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x2

    invoke-virtual {v15, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 352
    rem-int/lit8 v5, v16, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const v5, -0xbbbbbc

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 353
    :cond_3
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method private createTotals(Landroid/widget/TableLayout;)V
    .locals 11
    .parameter "mainReport"

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 250
    const/16 v6, 0x8

    new-array v5, v6, [Landroid/widget/TextView;

    .line 251
    .local v5, totals:[Landroid/widget/TextView;
    iget-object v6, p0, Lnet/ser1/timetracker/Report;->dateViews:Ljava/util/Map;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 253
    .local v3, row:Landroid/widget/TableRow;
    new-instance v6, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v6}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {p1, v3, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, blank:Landroid/widget/TextView;
    invoke-virtual {v0, v8, v9, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 256
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v3, v0, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v10, :cond_0

    .line 269
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 270
    .local v4, total:Landroid/widget/TextView;
    aput-object v4, v5, v10

    .line 271
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v4, v8, v9, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 273
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 274
    sget v6, Lnet/ser1/timetracker/Report;->DKYELLOW:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 275
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v3, v4, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    return-void

    .line 258
    .end local v4           #total:Landroid/widget/TextView;
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 259
    .local v1, dayTime:Landroid/widget/TextView;
    aput-object v1, v5, v2

    .line 260
    invoke-virtual {v1, v8, v9, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 261
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 262
    rem-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 263
    sget v6, Lnet/ser1/timetracker/Report;->DKYELLOW:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 266
    :goto_1
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    invoke-virtual {v3, v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_1
    sget v6, Lnet/ser1/timetracker/Report;->DKDKYELLOW:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private export()Ljava/lang/String;
    .locals 11

    .prologue
    const-string v10, "report_"

    const-string v9, "/sdcard/"

    const-string v8, ".csv"

    .line 170
    invoke-direct {p0}, Lnet/ser1/timetracker/Report;->getRangeName()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, rangeName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "report_"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".csv"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, fname:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/sdcard/"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, fout:Ljava/io/File;
    const/4 v0, 0x0

    .line 175
    .local v0, counter:I
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 181
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 182
    .local v4, out:Ljava/io/OutputStream;
    invoke-direct {p0}, Lnet/ser1/timetracker/Report;->getCurrentRange()[[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lnet/ser1/timetracker/CSVExporter;->exportRows(Ljava/io/OutputStream;[[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    .line 187
    .end local v4           #out:Ljava/io/OutputStream;
    :goto_1
    return-object v6

    .line 176
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "report_"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".csv"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v3, Ljava/io/File;

    .end local v3           #fout:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/sdcard/"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v3       #fout:Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 186
    .local v2, fnfe:Ljava/io/FileNotFoundException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v6}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 187
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private fillInTasksAndRanges()V
    .locals 19

    .prologue
    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v3, "tasks"

    sget-object v4, Lnet/ser1/timetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "name"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 446
    .local v11, c:Landroid/database/Cursor;
    const/16 v2, 0x8

    new-array v12, v2, [J

    .line 447
    .local v12, dayTotals:[J
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 450
    .local v15, tid:I
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 451
    .local v16, tid_s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->dateViews:Ljava/util/Map;

    move-object v2, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/widget/TextView;

    .line 453
    .local v10, arryForDay:[Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lnet/ser1/timetracker/Report;->getDays(Ljava/lang/String;)[J

    move-result-object v13

    .line 455
    .local v13, days:[J
    const/16 v18, 0x0

    .line 456
    .local v18, weekTotal:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    const/4 v2, 0x7

    if-lt v14, v2, :cond_2

    .line 463
    const/4 v2, 0x7

    aget-object v2, v10, v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/ser1/timetracker/Report;->decimalTime:Z

    move v3, v0

    const-string v4, "%02d:%02d"

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v5, v0

    invoke-static {v3, v4, v5, v6}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const/4 v2, 0x7

    aget-wide v3, v12, v2

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v5, v0

    add-long/2addr v3, v5

    aput-wide v3, v12, v2

    .line 465
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 448
    if-nez v2, :cond_0

    .line 467
    .end local v10           #arryForDay:[Landroid/widget/TextView;
    .end local v13           #days:[J
    .end local v14           #i:I
    .end local v15           #tid:I
    .end local v16           #tid_s:Ljava/lang/String;
    .end local v18           #weekTotal:I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->dateViews:Ljava/util/Map;

    move-object v2, v0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/widget/TextView;

    .line 470
    .local v17, totals:[Landroid/widget/TextView;
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_1
    const/4 v2, 0x7

    if-lt v14, v2, :cond_3

    .line 473
    const/4 v2, 0x7

    aget-object v2, v17, v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/ser1/timetracker/Report;->decimalTime:Z

    move v3, v0

    const-string v4, "%02d:%02d"

    const/4 v5, 0x7

    aget-wide v5, v12, v5

    invoke-static {v3, v4, v5, v6}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    return-void

    .line 457
    .end local v17           #totals:[Landroid/widget/TextView;
    .restart local v10       #arryForDay:[Landroid/widget/TextView;
    .restart local v13       #days:[J
    .restart local v15       #tid:I
    .restart local v16       #tid_s:Ljava/lang/String;
    .restart local v18       #weekTotal:I
    :cond_2
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v2, v0

    aget-wide v4, v13, v14

    add-long/2addr v2, v4

    move-wide v0, v2

    long-to-int v0, v0

    move/from16 v18, v0

    .line 458
    aget-wide v2, v12, v14

    aget-wide v4, v13, v14

    add-long/2addr v2, v4

    aput-wide v2, v12, v14

    .line 459
    aget-object v2, v10, v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/ser1/timetracker/Report;->decimalTime:Z

    move v3, v0

    const-string v4, "%02d:%02d"

    aget-wide v5, v13, v14

    invoke-static {v3, v4, v5, v6}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 471
    .end local v10           #arryForDay:[Landroid/widget/TextView;
    .end local v13           #days:[J
    .end local v15           #tid:I
    .end local v16           #tid_s:Ljava/lang/String;
    .end local v18           #weekTotal:I
    .restart local v17       #totals:[Landroid/widget/TextView;
    :cond_3
    aget-object v2, v17, v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/ser1/timetracker/Report;->decimalTime:Z

    move v3, v0

    const-string v4, "%02d:%02d"

    aget-wide v5, v12, v14

    invoke-static {v3, v4, v5, v6}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    add-int/lit8 v14, v14, 0x1

    goto :goto_1
.end method

.method private getCurrentRange()[[Ljava/lang/String;
    .locals 25

    .prologue
    .line 192
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v19, tasks:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v18, Ljava/util/TreeMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V

    .line 195
    .local v18, taskNames:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "tasks"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ROWID"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ROWID"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 196
    .local v12, c:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 199
    .local v20, tid:I
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 200
    .local v21, tname:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 197
    if-nez v3, :cond_0

    .line 203
    .end local v20           #tid:I
    .end local v21           #tname:Ljava/lang/String;
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 205
    const/4 v3, 0x7

    move v0, v3

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 206
    .local v24, weekDays:[I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    const/4 v3, 0x7

    if-lt v15, v3, :cond_3

    .line 210
    const/16 v3, 0x9

    new-array v14, v3, [Ljava/lang/String;

    .line 211
    .local v14, headers:[Ljava/lang/String;
    const/4 v3, 0x0

    const v4, 0x7f060003

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/Report;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 214
    .local v13, calRef:Ljava/util/Calendar;
    const/4 v15, 0x0

    :goto_1
    const/4 v3, 0x7

    if-lt v15, v3, :cond_4

    .line 218
    const/16 v3, 0x8

    const v4, 0x7f060046

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/Report;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    .line 219
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->dateViews:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->dateViews:Ljava/util/Map;

    move-object v3, v0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/widget/TextView;

    .line 233
    .local v22, totals:[Landroid/widget/TextView;
    const/16 v3, 0x9

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 234
    .local v23, totalsRow:[Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v3, 0x0

    const v4, 0x7f060047

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/Report;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 236
    const/4 v15, 0x0

    :goto_2
    const/16 v3, 0x8

    if-lt v15, v3, :cond_6

    .line 240
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    aput-object v4, v16, v3

    .line 241
    .local v16, k:[[Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [[Ljava/lang/String;

    return-object p0

    .line 207
    .end local v13           #calRef:Ljava/util/Calendar;
    .end local v14           #headers:[Ljava/lang/String;
    .end local v16           #k:[[Ljava/lang/String;
    .end local v22           #totals:[Landroid/widget/TextView;
    .end local v23           #totalsRow:[Ljava/lang/String;
    .restart local p0
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-int/2addr v3, v15

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    aput v3, v24, v15

    .line 206
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 215
    .restart local v13       #calRef:Ljava/util/Calendar;
    .restart local v14       #headers:[Ljava/lang/String;
    :cond_4
    const/4 v3, 0x7

    aget v4, v24, v15

    invoke-virtual {v13, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 216
    add-int/lit8 v3, v15, 0x1

    const-string v4, "%1$ta"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    .line 214
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 221
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 222
    .restart local v20       #tid:I
    const/4 v3, -0x1

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_2

    .line 223
    const/16 v3, 0x9

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 224
    .local v17, rowForTask:[Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    const/4 v5, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v17, v5

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->dateViews:Ljava/util/Map;

    move-object v3, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/widget/TextView;

    .line 227
    .local v11, arryForDay:[Landroid/widget/TextView;
    const/4 v15, 0x0

    :goto_3
    const/16 v3, 0x8

    if-ge v15, v3, :cond_2

    .line 228
    add-int/lit8 v3, v15, 0x1

    aget-object v5, v11, v15

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v3

    .line 227
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 237
    .end local v11           #arryForDay:[Landroid/widget/TextView;
    .end local v17           #rowForTask:[Ljava/lang/String;
    .end local v20           #tid:I
    .restart local v22       #totals:[Landroid/widget/TextView;
    .restart local v23       #totalsRow:[Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v15, 0x1

    aget-object v4, v22, v15

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 236
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2
.end method

.method private getDays(Ljava/lang/String;)[J
    .locals 22
    .parameter "tid_s"

    .prologue
    .line 488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 489
    .local v13, day:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/ser1/timetracker/Report;->startDay:I

    move v5, v0

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 490
    const/4 v5, 0x7

    new-array v14, v5, [J

    .line 491
    .local v14, days:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "ranges"

    sget-object v7, Lnet/ser1/timetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    const-string v8, "task_id = ? AND start < ? AND ( end > ? OR end ISNULL )"

    .line 493
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->weekEnd:Ljava/util/Calendar;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 496
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 491
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 498
    .local v18, r:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 502
    .local v19, start:J
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 508
    .local v15, end:J
    :goto_0
    move-object v0, v13

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 510
    const/4 v5, 0x7

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 511
    .local v21, weekDays:[I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    const/4 v5, 0x7

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_3

    .line 516
    const/16 v17, 0x0

    :goto_2
    const/4 v5, 0x7

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_4

    .line 521
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 499
    if-nez v5, :cond_0

    .line 523
    .end local v15           #end:J
    .end local v17           #i:I
    .end local v19           #start:J
    .end local v21           #weekDays:[I
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 524
    return-object v14

    .line 505
    .restart local v19       #start:J
    :cond_2
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .restart local v15       #end:J
    goto :goto_0

    .line 512
    .restart local v17       #i:I
    .restart local v21       #weekDays:[I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int v5, v5, v17

    rem-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x1

    aput v5, v21, v17

    .line 511
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 517
    :cond_4
    const/4 v5, 0x7

    aget v6, v21, v17

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 518
    aget-wide v5, v14, v17

    move-object v0, v13

    move-wide/from16 v1, v19

    move-wide v3, v15

    invoke-static {v0, v1, v2, v3, v4}, Lnet/ser1/timetracker/TimeRange;->overlap(Ljava/util/Calendar;JJ)J

    move-result-wide v7

    add-long/2addr v5, v7

    aput-wide v5, v14, v17

    .line 516
    add-int/lit8 v17, v17, 0x1

    goto :goto_2
.end method

.method private getRangeName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 245
    const-string v0, "%1$tF"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static weekEnd(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 9
    .parameter "tw"
    .parameter "startDay"

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x7

    .line 401
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 402
    .local v1, ws:Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 407
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 408
    .local v0, adjustedDay:I
    const/4 v2, 0x5

    sub-int v3, p1, v0

    sub-int v3, v4, v3

    rem-int/lit8 v3, v3, 0x7

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 412
    const/4 v2, 0x6

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 413
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 414
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 415
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 416
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 417
    return-object v1
.end method

.method public static weekStart(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 9
    .parameter "tw"
    .parameter "startDay"

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x7

    .line 376
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 377
    .local v1, ws:Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 382
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 383
    .local v0, adjustedDay:I
    const/4 v2, 0x5

    sub-int v3, p1, v0

    sub-int v3, v4, v3

    rem-int/lit8 v3, v3, 0x7

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 387
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 388
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 389
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 390
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v1, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 391
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 433
    :goto_0
    :pswitch_0
    sget-object v3, Lnet/ser1/timetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, beginning:Ljava/lang/String;
    sget-object v3, Lnet/ser1/timetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lnet/ser1/timetracker/Report;->weekEnd:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, ending:Ljava/lang/String;
    const v3, 0x7f060016

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v8

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lnet/ser1/timetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/Report;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    invoke-direct {p0}, Lnet/ser1/timetracker/Report;->fillInTasksAndRanges()V

    .line 438
    iget-object v3, p0, Lnet/ser1/timetracker/Report;->weekView:Landroid/widget/TextView;

    const v4, 0x7f060017

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lnet/ser1/timetracker/Report;->WEEK_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lnet/ser1/timetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    return-void

    .line 423
    .end local v0           #beginning:Ljava/lang/String;
    .end local v1           #ending:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 424
    iget-object v3, p0, Lnet/ser1/timetracker/Report;->weekEnd:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 427
    :pswitch_2
    iget-object v3, p0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 428
    iget-object v3, p0, Lnet/ser1/timetracker/Report;->weekEnd:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x7f070012
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v10}, Lnet/ser1/timetracker/Report;->setRequestedOrientation(I)V

    .line 69
    const v5, 0x7f030007

    invoke-virtual {p0, v5}, Lnet/ser1/timetracker/Report;->setContentView(I)V

    .line 70
    const v5, 0x7f070011

    invoke-virtual {p0, v5}, Lnet/ser1/timetracker/Report;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    .line 72
    .local v3, mainReport:Landroid/widget/TableLayout;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 73
    .local v1, c:Ljava/util/Calendar;
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 74
    invoke-virtual {p0}, Lnet/ser1/timetracker/Report;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "report_date"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 75
    invoke-virtual {p0}, Lnet/ser1/timetracker/Report;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "start_day"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lnet/ser1/timetracker/Report;->startDay:I

    .line 76
    iget v5, p0, Lnet/ser1/timetracker/Report;->startDay:I

    invoke-static {v1, v5}, Lnet/ser1/timetracker/Report;->weekStart(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    .line 77
    iget v5, p0, Lnet/ser1/timetracker/Report;->startDay:I

    invoke-static {v1, v5}, Lnet/ser1/timetracker/Report;->weekEnd(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lnet/ser1/timetracker/Report;->weekEnd:Ljava/util/Calendar;

    .line 78
    sget-object v5, Lnet/ser1/timetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lnet/ser1/timetracker/Report;->weekStart:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, beginning:Ljava/lang/String;
    sget-object v5, Lnet/ser1/timetracker/Report;->TITLE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lnet/ser1/timetracker/Report;->weekEnd:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, ending:Ljava/lang/String;
    const v5, 0x7f060016

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v10

    aput-object v2, v6, v7

    invoke-virtual {p0, v5, v6}, Lnet/ser1/timetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lnet/ser1/timetracker/Report;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lnet/ser1/timetracker/Report;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "time_display"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lnet/ser1/timetracker/Report;->decimalTime:Z

    .line 84
    invoke-direct {p0, v3}, Lnet/ser1/timetracker/Report;->createHeader(Landroid/widget/TableLayout;)V

    .line 86
    new-instance v5, Lnet/ser1/timetracker/DBHelper;

    invoke-direct {v5, p0}, Lnet/ser1/timetracker/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/ser1/timetracker/Report;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    .line 87
    iget-object v5, p0, Lnet/ser1/timetracker/Report;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v5}, Lnet/ser1/timetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lnet/ser1/timetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    const v5, 0x7f070013

    invoke-virtual {p0, v5}, Lnet/ser1/timetracker/Report;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lnet/ser1/timetracker/Report;->weekView:Landroid/widget/TextView;

    .line 90
    iget-object v5, p0, Lnet/ser1/timetracker/Report;->weekView:Landroid/widget/TextView;

    const v6, 0x7f060017

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lnet/ser1/timetracker/Report;->WEEK_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lnet/ser1/timetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v5, 0x7f070012

    invoke-virtual {p0, v5}, Lnet/ser1/timetracker/Report;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v5, 0x7f070014

    invoke-virtual {p0, v5}, Lnet/ser1/timetracker/Report;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0, v3}, Lnet/ser1/timetracker/Report;->createReport(Landroid/widget/TableLayout;)V

    .line 96
    invoke-direct {p0, v3}, Lnet/ser1/timetracker/Report;->createTotals(Landroid/widget/TableLayout;)V

    .line 98
    invoke-direct {p0}, Lnet/ser1/timetracker/Report;->fillInTasksAndRanges()V

    .line 99
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x108007a

    const v3, 0x104000a

    const/4 v2, 0x0

    .line 140
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 159
    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lnet/ser1/timetracker/Report;->exportMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 142
    iput-object v0, p0, Lnet/ser1/timetracker/Report;->exportSucceed:Landroid/app/AlertDialog;

    .line 148
    iget-object v0, p0, Lnet/ser1/timetracker/Report;->exportSucceed:Landroid/app/AlertDialog;

    goto :goto_0

    .line 150
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lnet/ser1/timetracker/Report;->exportMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 110
    const/16 v0, 0x9

    const v1, 0x7f06001a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 111
    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 119
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 135
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 121
    :pswitch_0
    invoke-direct {p0}, Lnet/ser1/timetracker/Report;->export()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, fname:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 123
    const v1, 0x7f06003c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lnet/ser1/timetracker/Report;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/ser1/timetracker/Report;->exportMessage:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lnet/ser1/timetracker/Report;->exportSucceed:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/ser1/timetracker/Report;->exportSucceed:Landroid/app/AlertDialog;

    iget-object v2, p0, Lnet/ser1/timetracker/Report;->exportMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Report;->showDialog(I)V

    goto :goto_0

    .line 127
    :cond_1
    const v1, 0x7f06003d

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Report;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/ser1/timetracker/Report;->exportMessage:Ljava/lang/String;

    .line 128
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Report;->showDialog(I)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 287
    iget-object v0, p0, Lnet/ser1/timetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 288
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 281
    iget-object v0, p0, Lnet/ser1/timetracker/Report;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v0}, Lnet/ser1/timetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/ser1/timetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 282
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lnet/ser1/timetracker/Report;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 105
    return-void
.end method
