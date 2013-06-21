.class public Lccc71/pmw/lib/pmw_logcat;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field private static n:Landroid/widget/LinearLayout;

.field private static o:F


# instance fields
.field private A:Z

.field private B:Z

.field a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;

.field e:Landroid/view/View$OnClickListener;

.field f:Landroid/view/View$OnClickListener;

.field j:Landroid/view/View$OnClickListener;

.field private k:Ljava/lang/String;

.field private l:Lccc71/pmw/b/p;

.field private m:Lccc71/a/a/a/b;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Landroid/graphics/Bitmap;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 75
    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->r:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->s:Landroid/graphics/Bitmap;

    .line 81
    const v0, -0x9f9f01

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->t:I

    .line 82
    const v0, -0x9f00a0

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->u:I

    .line 83
    const/16 v0, -0x3fa0

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->v:I

    .line 84
    const v0, -0x9fa0

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->w:I

    .line 88
    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_logcat;->z:Z

    .line 89
    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_logcat;->A:Z

    .line 90
    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_logcat;->B:Z

    .line 378
    new-instance v0, Lccc71/pmw/lib/gj;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gj;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 415
    new-instance v0, Lccc71/pmw/lib/gq;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gq;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->b:Landroid/view/View$OnClickListener;

    .line 438
    new-instance v0, Lccc71/pmw/lib/gr;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gr;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->c:Landroid/view/View$OnClickListener;

    .line 672
    new-instance v0, Lccc71/pmw/lib/gx;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gx;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->d:Landroid/view/View$OnClickListener;

    .line 801
    new-instance v0, Lccc71/pmw/lib/gz;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gz;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->e:Landroid/view/View$OnClickListener;

    .line 832
    new-instance v0, Lccc71/pmw/lib/ha;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ha;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->f:Landroid/view/View$OnClickListener;

    .line 842
    new-instance v0, Lccc71/pmw/lib/hb;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/hb;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->j:Landroid/view/View$OnClickListener;

    .line 61
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_logcat;)Lccc71/a/a/a/b;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_logcat;Ljava/lang/String;)Lccc71/utils/ccc71_text_view;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1232
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_logcat;->a(Ljava/lang/String;)Lccc71/utils/ccc71_text_view;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lccc71/utils/ccc71_text_view;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/16 v7, 0x15

    const/4 v6, 0x2

    .line 1234
    if-nez p1, :cond_0

    .line 1235
    const-string p1, ""

    .line 1237
    :cond_0
    new-instance v1, Lccc71/utils/ccc71_text_view;

    invoke-direct {v1, p0}, Lccc71/utils/ccc71_text_view;-><init>(Landroid/content/Context;)V

    .line 1238
    invoke-virtual {v1, v6, v6, v6, v6}, Lccc71/utils/ccc71_text_view;->setPadding(IIII)V

    .line 1242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_8

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_8

    .line 1244
    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1245
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1246
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    const/16 v5, 0x12

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1247
    iget-object v4, p0, Lccc71/pmw/lib/pmw_logcat;->k:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 1249
    if-eq v2, v8, :cond_5

    if-lt v2, v7, :cond_5

    .line 1251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1284
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 1288
    invoke-virtual {v1, v9}, Lccc71/utils/ccc71_text_view;->setId(I)V

    .line 1311
    :goto_1
    invoke-virtual {v1, p1}, Lccc71/utils/ccc71_text_view;->setText(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    iget v0, p0, Lccc71/pmw/lib/pmw_logcat;->y:I

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setBackgroundColor(I)V

    .line 1317
    :cond_1
    invoke-virtual {v1}, Lccc71/utils/ccc71_text_view;->getId()I

    move-result v0

    iget v2, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    if-lt v0, v2, :cond_2

    .line 1318
    iget v0, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1320
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setVisibility(I)V

    .line 1323
    :cond_3
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 1325
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1327
    new-instance v0, Lccc71/pmw/lib/gp;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gp;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1342
    :cond_4
    return-object v1

    .line 1256
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1261
    :cond_6
    if-eq v2, v8, :cond_7

    .line 1263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1267
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1271
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_9

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_9

    .line 1275
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1276
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1280
    :cond_9
    const/16 v0, 0x55

    .line 1281
    goto/16 :goto_0

    .line 1291
    :sswitch_0
    invoke-virtual {v1, v10}, Lccc71/utils/ccc71_text_view;->setId(I)V

    .line 1292
    iget v0, p0, Lccc71/pmw/lib/pmw_logcat;->t:I

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setTextColor(I)V

    goto/16 :goto_1

    .line 1295
    :sswitch_1
    invoke-virtual {v1, v6}, Lccc71/utils/ccc71_text_view;->setId(I)V

    .line 1296
    iget v0, p0, Lccc71/pmw/lib/pmw_logcat;->u:I

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setTextColor(I)V

    goto/16 :goto_1

    .line 1299
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setId(I)V

    .line 1300
    iget v0, p0, Lccc71/pmw/lib/pmw_logcat;->v:I

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setTextColor(I)V

    goto/16 :goto_1

    .line 1304
    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setId(I)V

    .line 1305
    iget v0, p0, Lccc71/pmw/lib/pmw_logcat;->w:I

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setTextColor(I)V

    goto/16 :goto_1

    .line 1308
    :sswitch_4
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_text_view;->setId(I)V

    goto/16 :goto_1

    .line 1284
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x45 -> :sswitch_3
        0x46 -> :sswitch_3
        0x49 -> :sswitch_0
        0x55 -> :sswitch_4
        0x57 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(I)V
    .locals 12
    .parameter

    .prologue
    const v2, 0x7fffffff

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1065
    new-array v6, v11, [I

    .line 1066
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1070
    const/4 v1, 0x0

    .line 1071
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v4, v5

    move v3, p1

    .line 1072
    :goto_0
    if-lt v4, v7, :cond_0

    .line 1104
    if-eqz v1, :cond_4

    .line 1106
    new-array v2, v11, [I

    .line 1107
    invoke-virtual {v1, v2}, Lccc71/utils/ccc71_text_view;->getLocationInWindow([I)V

    .line 1109
    sget v0, Lccc71/pmw/lib/d;->ix:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1110
    aget v1, v2, v10

    aget v2, v6, v10

    sub-int/2addr v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1117
    :goto_1
    return-void

    .line 1074
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_text_view;

    .line 1075
    invoke-virtual {v0}, Lccc71/utils/ccc71_text_view;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 1076
    invoke-virtual {v0}, Lccc71/utils/ccc71_text_view;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1080
    iget-object v9, p0, Lccc71/pmw/lib/pmw_logcat;->r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1082
    iget v8, p0, Lccc71/pmw/lib/pmw_logcat;->y:I

    invoke-virtual {v0, v8}, Lccc71/utils/ccc71_text_view;->setBackgroundColor(I)V

    .line 1083
    new-array v8, v11, [I

    .line 1084
    invoke-virtual {v0, v8}, Lccc71/utils/ccc71_text_view;->getLocationInWindow([I)V

    .line 1086
    if-nez v1, :cond_1

    .line 1089
    if-nez v3, :cond_5

    move v1, v2

    .line 1072
    :goto_2
    add-int/lit8 v3, v4, 0x2

    move v4, v3

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 1092
    :cond_1
    aget v8, v8, v10

    aget v9, v6, v10

    sub-int/2addr v8, v9

    if-le v8, v3, :cond_3

    move v1, v2

    .line 1095
    goto :goto_2

    .line 1100
    :cond_2
    invoke-virtual {v0, v5}, Lccc71/utils/ccc71_text_view;->setBackgroundColor(I)V

    :cond_3
    move-object v0, v1

    move v1, v3

    goto :goto_2

    .line 1114
    :cond_4
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->eL:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_logcat;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lccc71/pmw/lib/pmw_logcat;->s:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_logcat;Lccc71/pmw/b/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lccc71/pmw/lib/pmw_logcat;->l:Lccc71/pmw/b/p;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_logcat;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_logcat;->B:Z

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_logcat;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_logcat;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_logcat;->A:Z

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_logcat;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_logcat;->B:Z

    return v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    invoke-virtual {v0}, Lccc71/a/a/a/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    :cond_0
    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_logcat;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lccc71/pmw/lib/pmw_logcat;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_logcat;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_logcat;->z:Z

    return-void
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->f()V

    return-void
.end method

.method static synthetic e()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_logcat;)Lccc71/pmw/b/p;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->l:Lccc71/pmw/b/p;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_logcat;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->k:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_logcat;->B:Z

    if-nez v0, :cond_0

    .line 221
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_logcat;->z:Z

    if-eqz v0, :cond_1

    .line 225
    new-instance v0, Lccc71/a/a/a/a;

    new-instance v1, Lccc71/pmw/lib/he;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/he;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    invoke-direct {v0, p0, v1}, Lccc71/a/a/a/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const/16 v0, 0x10

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Lccc71/a/a/a/e;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->k:Ljava/lang/String;

    new-instance v2, Lccc71/pmw/lib/he;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/he;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    invoke-direct {v0, p0, v1, v2}, Lccc71/a/a/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    goto :goto_0

    .line 239
    :cond_2
    new-instance v0, Lccc71/a/a/a/d;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->k:Ljava/lang/String;

    new-instance v2, Lccc71/pmw/lib/he;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/he;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    invoke-direct {v0, p0, v1, v2}, Lccc71/a/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    goto :goto_0
.end method

.method private g()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 258
    sget-object v1, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    .line 260
    sget v0, Lccc71/pmw/lib/e;->bl:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->setContentView(I)V

    .line 261
    sget v0, Lccc71/pmw/lib/d;->dA:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    .line 263
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v0, v2

    .line 266
    :goto_0
    if-lt v0, v3, :cond_2

    .line 283
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->aa:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 284
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    sget v0, Lccc71/pmw/lib/d;->ag:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 286
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    sget v0, Lccc71/pmw/lib/d;->J:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 288
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    sget v0, Lccc71/pmw/lib/d;->B:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 290
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    sget v0, Lccc71/pmw/lib/d;->aj:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 292
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    sget v0, Lccc71/pmw/lib/d;->S:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 294
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    sget v1, Lccc71/pmw/lib/d;->aG:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 297
    iget-object v3, p0, Lccc71/pmw/lib/pmw_logcat;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 298
    iget-object v3, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    if-eqz v3, :cond_1

    .line 299
    iget-object v3, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    invoke-virtual {v3}, Lccc71/a/a/a/b;->b()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 301
    :cond_1
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->k:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 303
    new-instance v1, Lccc71/pmw/lib/hd;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/hd;-><init>(Lccc71/pmw/lib/pmw_logcat;Landroid/widget/Button;)V

    new-array v0, v2, [Ljava/lang/Void;

    .line 352
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/hd;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 358
    :goto_1
    return-void

    .line 268
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 269
    if-eqz v4, :cond_4

    .line 270
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 273
    if-eqz v4, :cond_3

    .line 274
    sget-object v5, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    iget v6, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    if-ge v5, v6, :cond_4

    .line 278
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 356
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_logcat;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_logcat;->z:Z

    return v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 1040
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1041
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->eM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1042
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1043
    iget-object v2, p0, Lccc71/pmw/lib/pmw_logcat;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1045
    const v2, 0x104000a

    new-instance v3, Lccc71/pmw/lib/go;

    invoke-direct {v3, p0, v1}, Lccc71/pmw/lib/go;-><init>(Lccc71/pmw/lib/pmw_logcat;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1057
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1058
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1059
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1060
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1061
    return-void
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_logcat;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_logcat;->A:Z

    return v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_logcat;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->r:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1121
    sget v0, Lccc71/pmw/lib/d;->B:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1122
    if-eqz v0, :cond_0

    .line 1124
    iget v1, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1136
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->i()V

    .line 1138
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v1, v2

    .line 1139
    :goto_0
    if-lt v1, v3, :cond_0

    .line 1154
    return-void

    .line 1141
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_text_view;

    .line 1142
    if-eqz v0, :cond_2

    .line 1144
    invoke-virtual {v0}, Lccc71/utils/ccc71_text_view;->getId()I

    move-result v4

    iget v5, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    if-lt v4, v5, :cond_1

    iget v4, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lccc71/utils/ccc71_text_view;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1146
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lccc71/utils/ccc71_text_view;->setVisibility(I)V

    .line 1139
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1150
    :cond_3
    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_text_view;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->h()V

    return-void
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1345
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->m:Lccc71/a/a/a/b;

    invoke-virtual {v0}, Lccc71/a/a/a/b;->c()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v3, 0x7d0

    if-le v1, v3, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, -0x7d0

    sub-int v3, v0, v1

    if-gez v3, :cond_5

    :goto_0
    if-le v1, v0, :cond_4

    :goto_1
    sget-object v1, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "has extras"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ".at_logcat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->a(Ljava/lang/String;)Lccc71/utils/ccc71_text_view;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Out of memory error adding logcat data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "process_monitor_widget"

    const-string v2, "Error adding logcat data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_logcat;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->s:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic m(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    return-void
.end method

.method static synthetic n(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 0
    .parameter

    .prologue
    .line 1134
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->j()V

    return-void
.end method

.method static synthetic o(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 1
    .parameter

    .prologue
    .line 1063
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->a(I)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lccc71/pmw/lib/c;->aB:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lccc71/pmw/lib/g;->bm:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 363
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 365
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->g()V

    .line 367
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_logcat;->B:Z

    if-eqz v0, :cond_0

    .line 371
    sget v0, Lccc71/pmw/lib/d;->aG:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 372
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 373
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 374
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 862
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 863
    sget v3, Lccc71/pmw/lib/d;->eW:I

    if-ne v0, v3, :cond_1

    .line 865
    new-instance v3, Lccc71/pmw/b/q;

    invoke-direct {v3, p0}, Lccc71/pmw/b/q;-><init>(Landroid/content/Context;)V

    .line 866
    invoke-virtual {v3}, Lccc71/pmw/b/q;->c()V

    .line 867
    invoke-virtual {v3}, Lccc71/pmw/b/q;->size()I

    move-result v4

    .line 868
    new-array v5, v4, [Ljava/lang/String;

    .line 869
    :goto_0
    if-lt v2, v4, :cond_0

    .line 873
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 874
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lccc71/pmw/lib/g;->eN:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 875
    new-instance v2, Lccc71/pmw/lib/gl;

    invoke-direct {v2, p0, v3}, Lccc71/pmw/lib/gl;-><init>(Lccc71/pmw/lib/pmw_logcat;Lccc71/pmw/b/q;)V

    invoke-virtual {v0, v5, v9, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 891
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 1035
    :goto_1
    return v0

    .line 871
    :cond_0
    invoke-virtual {v3, v2}, Lccc71/pmw/b/q;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    aput-object v0, v5, v2

    .line 869
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 895
    :cond_1
    sget v3, Lccc71/pmw/lib/d;->ef:I

    if-ne v0, v3, :cond_5

    .line 897
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 898
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 899
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    move v3, v2

    .line 900
    :goto_2
    if-lt v3, v6, :cond_2

    .line 927
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 929
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 931
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 932
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lccc71/pmw/lib/g;->eN:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 933
    new-instance v3, Lccc71/pmw/lib/gm;

    invoke-direct {v3, p0, v4}, Lccc71/pmw/lib/gm;-><init>(Lccc71/pmw/lib/pmw_logcat;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 946
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_3
    move v0, v1

    .line 954
    goto :goto_1

    .line 902
    :cond_2
    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_3

    .line 903
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_text_view;

    .line 906
    if-eqz v0, :cond_3

    .line 908
    invoke-virtual {v0}, Lccc71/utils/ccc71_text_view;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    const-string v7, "has died"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 911
    const-string v7, "Process "

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 912
    const-string v8, "pid "

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 913
    if-eq v7, v10, :cond_3

    if-eq v8, v10, :cond_3

    .line 915
    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 916
    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 918
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 919
    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 950
    :cond_4
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lccc71/pmw/lib/g;->cb:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 951
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 956
    :cond_5
    sget v3, Lccc71/pmw/lib/d;->fy:I

    if-ne v0, v3, :cond_7

    .line 958
    iput v2, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    .line 959
    iput-object v9, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    .line 1033
    :cond_6
    :goto_4
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->j()V

    move v0, v1

    .line 1035
    goto/16 :goto_1

    .line 961
    :cond_7
    sget v3, Lccc71/pmw/lib/d;->ee:I

    if-ne v0, v3, :cond_8

    .line 963
    iput v1, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    .line 964
    iput-object v9, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    goto :goto_4

    .line 966
    :cond_8
    sget v3, Lccc71/pmw/lib/d;->dV:I

    if-ne v0, v3, :cond_9

    .line 968
    const/4 v0, 0x2

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    .line 969
    iput-object v9, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    goto :goto_4

    .line 971
    :cond_9
    sget v3, Lccc71/pmw/lib/d;->fz:I

    if-ne v0, v3, :cond_a

    .line 973
    const/4 v0, 0x3

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    .line 974
    iput-object v9, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    goto :goto_4

    .line 976
    :cond_a
    sget v3, Lccc71/pmw/lib/d;->dW:I

    if-ne v0, v3, :cond_b

    .line 978
    const/4 v0, 0x4

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    .line 979
    iput-object v9, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    goto :goto_4

    .line 981
    :cond_b
    sget v3, Lccc71/pmw/lib/d;->fu:I

    if-ne v0, v3, :cond_c

    .line 983
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 984
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->eQ:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 985
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 986
    iget-object v3, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 987
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 988
    const v3, 0x104000a

    new-instance v4, Lccc71/pmw/lib/gn;

    invoke-direct {v4, p0, v2}, Lccc71/pmw/lib/gn;-><init>(Lccc71/pmw/lib/pmw_logcat;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 998
    const/high16 v3, 0x104

    invoke-virtual {v0, v3, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 999
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1000
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1001
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    .line 1003
    goto/16 :goto_1

    .line 1005
    :cond_c
    sget v3, Lccc71/pmw/lib/d;->ft:I

    if-ne v0, v3, :cond_d

    .line 1007
    iput-object v9, p0, Lccc71/pmw/lib/pmw_logcat;->r:Ljava/lang/String;

    .line 1011
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v0, v2

    .line 1012
    :goto_5
    if-ge v0, v3, :cond_6

    .line 1014
    sget-object v4, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1012
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 1017
    :cond_d
    sget v2, Lccc71/pmw/lib/d;->fv:I

    if-ne v0, v2, :cond_e

    .line 1021
    sget v0, Lccc71/pmw/lib/d;->ix:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1022
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->a(I)V

    goto/16 :goto_4

    .line 1024
    :cond_e
    sget v2, Lccc71/pmw/lib/d;->fw:I

    if-ne v0, v2, :cond_f

    .line 1026
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->h()V

    goto/16 :goto_4

    .line 1030
    :cond_f
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter

    .prologue
    .line 1159
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1161
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->i()V

    .line 1162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "logs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "process_monitor_widget"

    const-string v1, "Log should not open, it\'s coming from PMW System!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->requestWindowFeature(I)Z

    .line 117
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->finish()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aE(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->t:I

    .line 126
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aF(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->u:I

    .line 127
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aG(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->v:I

    .line 128
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aH(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->w:I

    .line 130
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->x:I

    .line 131
    iget v0, p0, Lccc71/pmw/lib/pmw_logcat;->x:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 132
    iget v1, p0, Lccc71/pmw/lib/pmw_logcat;->x:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    .line 133
    iget v2, p0, Lccc71/pmw/lib/pmw_logcat;->x:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    .line 134
    iget v3, p0, Lccc71/pmw/lib/pmw_logcat;->x:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    .line 131
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_logcat;->y:I

    .line 136
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    const-string v1, "ccc71.pmw.pid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->k:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->g()V

    .line 141
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->h(Landroid/content/Context;)F

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_logcat;->o:F

    .line 143
    sget v0, Lccc71/pmw/lib/pmw_logcat;->o:F

    invoke-static {p0, v0}, Lccc71/utils/ccc71_text_view;->setFontSize(Landroid/content/Context;F)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1167
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1169
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 1170
    sget v1, Lccc71/pmw/lib/d;->B:I

    if-ne v0, v1, :cond_3

    .line 1172
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1174
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1176
    sget v0, Lccc71/pmw/lib/d;->ef:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 1177
    sget v0, Lccc71/pmw/lib/d;->eW:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 1180
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1182
    sget v0, Lccc71/pmw/lib/d;->fu:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1183
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1184
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1230
    :cond_1
    :goto_0
    return-void

    .line 1188
    :cond_2
    const/4 v0, 0x0

    .line 1189
    iget v1, p0, Lccc71/pmw/lib/pmw_logcat;->p:I

    packed-switch v1, :pswitch_data_0

    .line 1207
    :goto_1
    if-eqz v0, :cond_1

    .line 1209
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1210
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1192
    :pswitch_0
    sget v0, Lccc71/pmw/lib/d;->fy:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1

    .line 1195
    :pswitch_1
    sget v0, Lccc71/pmw/lib/d;->ee:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1

    .line 1198
    :pswitch_2
    sget v0, Lccc71/pmw/lib/d;->dV:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1

    .line 1201
    :pswitch_3
    sget v0, Lccc71/pmw/lib/d;->fz:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1

    .line 1204
    :pswitch_4
    sget v0, Lccc71/pmw/lib/d;->dW:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1

    .line 1216
    :cond_3
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_logcat;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->j:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1218
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->r:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1220
    sget v0, Lccc71/pmw/lib/d;->fw:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1221
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1222
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1226
    :cond_4
    sget v0, Lccc71/pmw/lib/d;->fv:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1227
    sget v0, Lccc71/pmw/lib/d;->ft:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 210
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_logcat;->s:Landroid/graphics/Bitmap;

    .line 215
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onStart()V

    .line 151
    const-string v0, "process_monitor_widget"

    const-string v1, "onStart - pmw_logcat"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_logcat;->A:Z

    if-nez v0, :cond_0

    .line 154
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_logcat;->B:Z

    if-eqz v0, :cond_1

    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    sget v0, Lccc71/pmw/lib/d;->aG:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 157
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 182
    :cond_0
    :goto_0
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->h(Landroid/content/Context;)F

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_logcat;->o:F

    .line 184
    sget v0, Lccc71/pmw/lib/pmw_logcat;->o:F

    invoke-static {p0, v0}, Lccc71/utils/ccc71_text_view;->setFontSize(Landroid/content/Context;F)V

    .line 185
    return-void

    .line 163
    :cond_1
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_logcat;->B:Z

    .line 165
    sget v0, Lccc71/pmw/lib/d;->aG:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 166
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    iget-object v1, p0, Lccc71/pmw/lib/pmw_logcat;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_logcat;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_1
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_logcat;->f()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onStop()V

    .line 192
    const-string v0, "process_monitor_widget"

    const-string v1, "onStop - pmw_logcat"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Lccc71/pmw/lib/hc;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/hc;-><init>(Lccc71/pmw/lib/pmw_logcat;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 202
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/hc;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 203
    return-void
.end method
