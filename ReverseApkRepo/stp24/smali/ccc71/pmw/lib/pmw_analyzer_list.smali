.class public Lccc71/pmw/lib/pmw_analyzer_list;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View$OnTouchListener;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer_list;->a:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer_list;->b:Landroid/view/View;

    .line 160
    new-instance v0, Lccc71/pmw/lib/ai;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ai;-><init>(Lccc71/pmw/lib/pmw_analyzer_list;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer_list;->c:Landroid/view/View$OnTouchListener;

    .line 175
    new-instance v0, Lccc71/pmw/lib/aj;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/aj;-><init>(Lccc71/pmw/lib/pmw_analyzer_list;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer_list;->d:Landroid/view/View$OnClickListener;

    .line 29
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer_list;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer_list;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer_list;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer_list;->b:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer_list;Landroid/widget/TableLayout;Ljava/lang/String;IF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 55
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p3}, Landroid/widget/TableRow;->setId(I)V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer_list;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer_list;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer_list;->registerForContextMenu(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer_list;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer_list;->a:[Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer_list;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 78
    sget v0, Lccc71/pmw/lib/d;->gu:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer_list;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 79
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 81
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v1

    .line 83
    new-instance v2, Lccc71/pmw/lib/ak;

    invoke-direct {v2, p0, v0, v1}, Lccc71/pmw/lib/ak;-><init>(Lccc71/pmw/lib/pmw_analyzer_list;Landroid/widget/TableLayout;F)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 157
    invoke-virtual {v2, v0}, Lccc71/pmw/lib/ak;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 158
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter

    .prologue
    const-wide/32 v0, 0x15180

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 215
    sget v4, Lccc71/pmw/lib/d;->eG:I

    if-ne v3, v4, :cond_1

    .line 217
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer_list;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer_list;->a:[Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer_list;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 223
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer_list;->e()V

    .line 287
    :cond_0
    :goto_0
    return v12

    .line 228
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 230
    array-length v4, v3

    .line 231
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sget v7, Lccc71/pmw/lib/d;->eH:I

    if-ne v6, v7, :cond_3

    .line 236
    :goto_1
    if-lt v2, v4, :cond_2

    .line 240
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer_list;->e()V

    goto :goto_0

    .line 238
    :cond_2
    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sget v7, Lccc71/pmw/lib/d;->eJ:I

    if-ne v6, v7, :cond_5

    .line 264
    :cond_4
    :goto_2
    if-lt v2, v4, :cond_9

    .line 286
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer_list;->e()V

    goto :goto_0

    .line 247
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sget v7, Lccc71/pmw/lib/d;->eL:I

    if-ne v6, v7, :cond_6

    .line 249
    const-wide/32 v0, 0x2a300

    goto :goto_2

    .line 251
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sget v7, Lccc71/pmw/lib/d;->eM:I

    if-ne v6, v7, :cond_7

    .line 253
    const-wide/32 v0, 0x93a80

    goto :goto_2

    .line 255
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sget v7, Lccc71/pmw/lib/d;->eI:I

    if-ne v6, v7, :cond_8

    .line 257
    const-wide/32 v0, 0x127500

    goto :goto_2

    .line 259
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sget v7, Lccc71/pmw/lib/d;->eK:I

    if-ne v6, v7, :cond_4

    .line 261
    const-wide/32 v0, 0x24ea00

    goto :goto_2

    .line 266
    :cond_9
    aget-object v6, v3, v2

    .line 267
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 269
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 272
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 273
    invoke-virtual {v8, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 274
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v7, v8, v10

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 275
    cmp-long v7, v7, v0

    if-lez v7, :cond_a

    .line 277
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lccc71/pmw/lib/e;->bb:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer_list;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer_list;->e()V

    .line 43
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 294
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer_list;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->h:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 295
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer_list;->a:[Ljava/lang/String;

    .line 52
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 53
    return-void
.end method
