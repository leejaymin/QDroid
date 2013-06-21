.class Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
.super Landroid/widget/LinearLayout;
.source "PowerTop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/PowerTop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidPowerView"
.end annotation


# static fields
.field private static formatter:Ljava/text/DecimalFormat;

.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private imageView:Landroid/widget/ImageView;

.field private name:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private uidInfo:Ledu/umich/PowerTutor/service/UidInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    .line 293
    sput-object v0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 295
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->formatter:Ljava/text/DecimalFormat;

    .line 292
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .parameter "activity"
    .parameter "startIntent"

    .prologue
    const/16 v5, 0x32

    const/16 v2, 0x28

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 315
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {p0, v5}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->setMinimumHeight(I)V

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->setOrientation(I)V

    .line 318
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->imageView:Landroid/widget/ImageView;

    .line 319
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 320
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 321
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 322
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 323
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 324
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 325
    const/4 v2, -0x2

    .line 326
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->textView:Landroid/widget/TextView;

    .line 328
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 329
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->textView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 331
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->addView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->addView(Landroid/view/View;)V

    .line 334
    new-instance v0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView$1;

    invoke-direct {v0, p0, p2, p1}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView$1;-><init>(Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-virtual {p0, v4}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->setFocusable(Z)V

    .line 343
    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;)Ledu/umich/PowerTutor/service/UidInfo;
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->uidInfo:Ledu/umich/PowerTutor/service/UidInfo;

    return-object v0
.end method

.method public static obtain(Landroid/app/Activity;Landroid/content/Intent;)Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    .locals 2
    .parameter "activity"
    .parameter "startIntent"

    .prologue
    .line 298
    sget-object v1, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;

    .line 299
    .local v0, result:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    if-nez v0, :cond_0

    new-instance v0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;

    .end local v0           #result:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    invoke-direct {v0, p0, p1}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 300
    :cond_0
    return-object v0
.end method


# virtual methods
.method public init(Ledu/umich/PowerTutor/service/UidInfo;I)V
    .locals 13
    .parameter "uidInfo"
    .parameter "keyType"

    .prologue
    .line 346
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v4

    .line 347
    .local v4, sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->uidInfo:Ledu/umich/PowerTutor/service/UidInfo;

    .line 348
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 349
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->uid:I

    invoke-virtual {v4, v5, v0}, Ledu/umich/PowerTutor/util/SystemInfo;->getUidName(ILandroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->name:Ljava/lang/String;

    .line 350
    iget v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->uid:I

    invoke-virtual {v4, v5, v0}, Ledu/umich/PowerTutor/util/SystemInfo;->getUidIcon(ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->icon:Landroid/graphics/drawable/Drawable;

    .line 351
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->imageView:Landroid/widget/ImageView;

    iget-object v6, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    const-wide v7, 0x426d1a94a2000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 354
    const-string v1, "G"

    .line 355
    .local v1, prefix:Ljava/lang/String;
    iget-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    const-wide v7, 0x426d1a94a2000000L

    div-double/2addr v5, v7

    iput-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    .line 368
    :goto_0
    iget-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->runtime:J

    long-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v2, v5

    .line 370
    .local v2, secs:J
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->textView:Landroid/widget/TextView;

    const-string v6, "%1$.1f%% [%3$d:%4$02d:%5$02d] %2$s\n%6$.1f %7$s%8$s"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 372
    iget-wide v9, p1, Ledu/umich/PowerTutor/service/UidInfo;->percentage:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-wide/16 v9, 0x3c

    div-long v9, v2, v9

    const-wide/16 v11, 0x3c

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-wide/16 v9, 0x3c

    div-long v9, v2, v9

    const-wide/16 v11, 0x3c

    rem-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 373
    const-wide/16 v9, 0x3c

    rem-long v9, v2, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-wide v9, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    aput-object v1, v7, v8

    const/4 v8, 0x7

    iget-object v9, p1, Ledu/umich/PowerTutor/service/UidInfo;->unit:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 370
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    return-void

    .line 356
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #secs:J
    :cond_0
    iget-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    const-wide v7, 0x41cdcd6500000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    .line 357
    const-string v1, "M"

    .line 358
    .restart local v1       #prefix:Ljava/lang/String;
    iget-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    const-wide v7, 0x41cdcd6500000000L

    div-double/2addr v5, v7

    iput-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    goto :goto_0

    .line 359
    .end local v1           #prefix:Ljava/lang/String;
    :cond_1
    iget-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    const-wide v7, 0x412e848000000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    .line 360
    const-string v1, "k"

    .line 361
    .restart local v1       #prefix:Ljava/lang/String;
    iget-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    const-wide v7, 0x412e848000000000L

    div-double/2addr v5, v7

    iput-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    goto/16 :goto_0

    .line 362
    .end local v1           #prefix:Ljava/lang/String;
    :cond_2
    iget-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    const-wide v7, 0x408f400000000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    .line 363
    const-string v1, ""

    .line 364
    .restart local v1       #prefix:Ljava/lang/String;
    iget-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    iput-wide v5, p1, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    goto/16 :goto_0

    .line 366
    .end local v1           #prefix:Ljava/lang/String;
    :cond_3
    const-string v1, "m"

    .restart local v1       #prefix:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 304
    sget-object v0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 305
    return-void
.end method
