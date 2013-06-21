.class public Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# instance fields
.field private a:Lgh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    .line 71
    return-void
.end method

.method public static synthetic a(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->g(I)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(II)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 198
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 199
    iget-object v2, p0, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a:Lgh;

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lgh;->a(ILjava/lang/Object;)V

    .line 200
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->g()V

    .line 201
    return-void
.end method

.method public static synthetic b(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->f(I)V

    return-void
.end method

.method public static synthetic b(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 175
    const v0, 0xea60

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->f()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 176
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    .line 177
    sub-long/2addr v0, v2

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method private d()I
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a:Lgh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 187
    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private f()I
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a:Lgh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 193
    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private f(I)V
    .locals 3
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a:Lgh;

    const/4 v1, 0x2

    add-int/lit8 v2, p1, 0x1

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgh;->a(ILjava/lang/Object;)V

    .line 225
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->g()V

    .line 226
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()V

    .line 206
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->d()V

    .line 208
    return-void
.end method

.method private g(I)V
    .locals 3
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a:Lgh;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgh;->a(ILjava/lang/Object;)V

    .line 246
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->g()V

    .line 247
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->i()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private i()I
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a:Lgh;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    .line 219
    return v0
.end method

.method private j()I
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a:Lgh;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private k()Ljava/lang/String;
    .locals 5

    .prologue
    .line 235
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->j()I

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 162
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 168
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 252
    const v0, 0x7f060012

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgh;

    iput-object v0, p0, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a:Lgh;

    .line 88
    new-array v7, v2, [Ldk;

    new-instance v0, Ldk;

    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->k()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v7, v5

    new-instance v0, Ldk;

    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->h()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v7, v6

    new-instance v0, Ldk;

    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->c()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v7, v8

    .line 103
    const v0, 0x7f08009c

    invoke-virtual {p0, v0, v7}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->a(I[Ldk;)V

    .line 104
    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->j()I

    move-result v0

    .line 105
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v6, v5}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(IZ)V

    .line 109
    :cond_0
    if-eq v0, v8, :cond_1

    :goto_0
    invoke-virtual {p0, v8, v6}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->b(IZ)V

    .line 110
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    return-void

    :cond_1
    move v6, v5

    .line 109
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f0800a1

    .line 116
    packed-switch p1, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 120
    :pswitch_0
    new-instance v0, LgU;

    invoke-direct {v0, p0}, LgU;-><init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)V

    .line 121
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070008

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->j()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Les;->a(IILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_1
    new-instance v0, LgT;

    invoke-direct {v0, p0}, LgT;-><init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)V

    .line 134
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08009f

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070009

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->i()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Les;->a(IILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 147
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, LgV;

    invoke-direct {v2, p0}, LgV;-><init>(Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;)V

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->d()I

    move-result v3

    invoke-direct {p0}, Lcom/kms/updater/gui/KMSUpdaterScheduleSettingsActivity;->f()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
