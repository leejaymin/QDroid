.class public final LdW;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:[J

.field private b:[Ljava/lang/CharSequence;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:[I

.field private synthetic g:Lcom/kms/gui/ReportsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/ReportsActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, LdW;->g:Lcom/kms/gui/ReportsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, LdW;->a:[J

    .line 199
    invoke-virtual {p1}, Lcom/kms/gui/ReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    const v1, 0x7f070023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, LdW;->b:[Ljava/lang/CharSequence;

    .line 201
    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, LdW;->c:Landroid/graphics/drawable/Drawable;

    .line 202
    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, LdW;->d:Landroid/graphics/drawable/Drawable;

    .line 203
    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LdW;->e:Landroid/graphics/drawable/Drawable;

    .line 204
    invoke-virtual {p0}, LdW;->a()V

    .line 205
    return-void

    .line 179
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x84t 0xct 0x24t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xc8t 0x7et 0x9at 0xfft 0xfft 0xfft 0xfft
        0x0t 0xc0t 0x69t 0x2at 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v4, 0x0

    .line 208
    .line 211
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v4}, Ljava/util/Date;->setHours(I)V

    .line 214
    invoke-virtual {v0, v4}, Ljava/util/Date;->setMinutes(I)V

    .line 215
    invoke-virtual {v0, v4}, Ljava/util/Date;->setSeconds(I)V

    .line 216
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 218
    invoke-virtual {p0}, LdW;->getCount()I

    move-result v8

    .line 220
    new-array v0, v8, [I

    iput-object v0, p0, LdW;->f:[I

    move v5, v4

    move v1, v4

    move v3, v4

    .line 221
    :goto_0
    if-ge v5, v8, :cond_1

    .line 223
    invoke-virtual {p0, v5}, LdW;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/reports/Event;

    .line 224
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getTime()J

    move-result-wide v9

    .line 226
    iget-object v0, p0, LdW;->f:[I

    const/4 v2, -0x1

    aput v2, v0, v5

    .line 227
    if-ge v3, v13, :cond_4

    move v2, v3

    .line 229
    :goto_1
    if-ge v2, v13, :cond_4

    .line 231
    iget-object v0, p0, LdW;->a:[J

    aget-wide v11, v0, v2

    sub-long v11, v6, v11

    cmp-long v0, v11, v9

    if-gtz v0, :cond_0

    .line 233
    if-eq v3, v2, :cond_3

    move v0, v4

    .line 238
    :goto_2
    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, LdW;->f:[I

    aput v2, v0, v5

    .line 241
    const/4 v0, 0x1

    move v1, v2

    .line 221
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 229
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_3
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, LdW;->g:Lcom/kms/gui/ReportsActivity;

    invoke-static {v0}, Lcom/kms/gui/ReportsActivity;->b(Lcom/kms/gui/ReportsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, LdW;->g:Lcom/kms/gui/ReportsActivity;

    invoke-static {v0}, Lcom/kms/gui/ReportsActivity;->b(Lcom/kms/gui/ReportsActivity;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, LdW;->g:Lcom/kms/gui/ReportsActivity;

    invoke-static {v1}, Lcom/kms/gui/ReportsActivity;->b(Lcom/kms/gui/ReportsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 264
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 271
    if-nez p2, :cond_0

    .line 273
    iget-object v0, p0, LdW;->g:Lcom/kms/gui/ReportsActivity;

    invoke-static {v0}, Lcom/kms/gui/ReportsActivity;->c(Lcom/kms/gui/ReportsActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    .line 279
    :cond_0
    const v0, 0x7f0b010b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 281
    const v1, 0x7f0b010a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 282
    iget-object v2, p0, LdW;->f:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 283
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    :goto_0
    invoke-virtual {p0, p1}, LdW;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kms/kmsshared/reports/Event;

    .line 292
    iget-object v2, p0, LdW;->g:Lcom/kms/gui/ReportsActivity;

    invoke-virtual {v1}, Lcom/kms/kmsshared/reports/Event;->getTime()J

    move-result-wide v3

    const/16 v5, 0x15

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v0, 0x7f0b010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    invoke-virtual {v1}, Lcom/kms/kmsshared/reports/Event;->getDetails()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const v0, 0x7f0b0002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 300
    invoke-static {}, Lcom/kms/gui/ReportsActivity;->c()[I

    move-result-object v2

    iget-object v3, p0, LdW;->g:Lcom/kms/gui/ReportsActivity;

    invoke-static {v3}, Lcom/kms/gui/ReportsActivity;->a(Lcom/kms/gui/ReportsActivity;)I

    move-result v3

    aget v2, v2, v3

    if-nez v2, :cond_2

    .line 302
    invoke-virtual {v1}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v1

    invoke-static {v1}, Lcom/kms/kmsshared/reports/Reports;->getEventGroup(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 319
    :pswitch_0
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    :goto_1
    return-object p2

    .line 285
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    const v1, 0x7f0b0005

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 287
    iget-object v2, p0, LdW;->b:[Ljava/lang/CharSequence;

    iget-object v3, p0, LdW;->f:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v1, p0, LdW;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 309
    :pswitch_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, LdW;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 314
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v1, p0, LdW;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
