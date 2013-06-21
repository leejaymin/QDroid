.class public Ledu/umich/PowerTutor/ui/PowerTop;
.super Landroid/app/Activity;
.source "PowerTop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;,
        Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    }
.end annotation


# static fields
.field private static final DIALOG_KEY:I = 0x0

.field private static final DIALOG_WINDOW:I = 0x1

.field private static final HIDE_UID_THRESHOLD:D = 0.1

.field public static final KEY_AVERAGE_POWER:I = 0x1

.field public static final KEY_CURRENT_POWER:I = 0x0

.field private static final KEY_NAMES:[Ljava/lang/CharSequence; = null

.field public static final KEY_TOTAL_ENERGY:I = 0x2

.field private static final MENU_KEY:I = 0x0

.field private static final MENU_WINDOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerTop"


# instance fields
.field private componentNames:[Ljava/lang/String;

.field private conn:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

.field private counterService:Ledu/umich/PowerTutor/service/ICounterService;

.field private filterGroup:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private mainView:Landroid/widget/LinearLayout;

.field private noUidMask:I

.field private prefs:Landroid/content/SharedPreferences;

.field private serviceIntent:Landroid/content/Intent;

.field private topGroup:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Current power"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 73
    const-string v2, "Average power"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Energy usage"

    aput-object v2, v0, v1

    .line 72
    sput-object v0, Ledu/umich/PowerTutor/ui/PowerTop;->KEY_NAMES:[Ljava/lang/CharSequence;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/ui/PowerTop;Ledu/umich/PowerTutor/service/ICounterService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-void
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/ui/PowerTop;)Ledu/umich/PowerTutor/service/ICounterService;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-object v0
.end method

.method static synthetic access$2(Ledu/umich/PowerTutor/ui/PowerTop;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->componentNames:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Ledu/umich/PowerTutor/ui/PowerTop;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->noUidMask:I

    return-void
.end method

.method static synthetic access$4(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->filterGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5(Ledu/umich/PowerTutor/ui/PowerTop;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->componentNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$7(Ledu/umich/PowerTutor/ui/PowerTop;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->noUidMask:I

    return v0
.end method

.method static synthetic access$8(Ledu/umich/PowerTutor/ui/PowerTop;)Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->conn:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    return-object v0
.end method

.method static synthetic access$9(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->serviceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private refreshView()V
    .locals 19

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    if-nez v11, :cond_0

    .line 201
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 202
    .local v3, loadingText:Landroid/widget/TextView;
    const-string v11, "Waiting for profiler service..."

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/16 v11, 0x11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 204
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ledu/umich/PowerTutor/ui/PowerTop;->setContentView(Landroid/view/View;)V

    .line 283
    .end local v3           #loadingText:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "topKeyId"

    const/4 v13, 0x2

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 210
    .local v2, keyId:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;

    const-string v13, "topWindowType"

    const/4 v14, 0x3

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 212
    move-object/from16 v0, p0

    iget v13, v0, Ledu/umich/PowerTutor/ui/PowerTop;->noUidMask:I

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;

    const-string v15, "topIgnoreMask"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    or-int/2addr v13, v14

    .line 210
    invoke-interface {v11, v12, v13}, Ledu/umich/PowerTutor/service/ICounterService;->getUidInfo(II)[B

    move-result-object v5

    .line 213
    .local v5, rawUidInfo:[B
    if-eqz v5, :cond_2

    .line 214
    new-instance v11, Ljava/io/ObjectInputStream;

    .line 215
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 214
    invoke-direct {v11, v12}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 215
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    .line 214
    check-cast v10, [Ledu/umich/PowerTutor/service/UidInfo;

    .line 216
    .local v10, uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    const-wide/16 v7, 0x0

    .line 217
    .local v7, total:D
    array-length v14, v10

    const/4 v11, 0x0

    move v13, v11

    :goto_1
    if-lt v13, v14, :cond_3

    .line 239
    const-wide/16 v11, 0x0

    cmpl-double v11, v7, v11

    if-nez v11, :cond_1

    const-wide/high16 v7, 0x3ff0

    .line 240
    :cond_1
    array-length v12, v10

    const/4 v11, 0x0

    :goto_2
    if-lt v11, v12, :cond_6

    .line 243
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 245
    const/4 v6, 0x0

    .line 246
    .local v6, sz:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v11, v10

    if-lt v1, v11, :cond_7

    .line 264
    move v1, v6

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-lt v1, v11, :cond_c

    .line 268
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v11, v6, v12}, Landroid/widget/LinearLayout;->removeViews(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    .line 275
    .end local v1           #i:I
    .end local v5           #rawUidInfo:[B
    .end local v6           #sz:I
    .end local v7           #total:D
    .end local v10           #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->mainView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ledu/umich/PowerTutor/ui/PowerTop;->setContentView(Landroid/view/View;)V

    .line 276
    if-nez v2, :cond_d

    .line 277
    sget-object v11, Ledu/umich/PowerTutor/ui/PowerTop;->KEY_NAMES:[Ljava/lang/CharSequence;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ledu/umich/PowerTutor/ui/PowerTop;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 217
    .restart local v5       #rawUidInfo:[B
    .restart local v7       #total:D
    .restart local v10       #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :cond_3
    :try_start_1
    aget-object v9, v10, v13

    .line 218
    .local v9, uidInfo:Ledu/umich/PowerTutor/service/UidInfo;
    iget v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->uid:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 217
    :goto_6
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    goto :goto_1

    .line 219
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 234
    iget v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->currentPower:I

    int-to-double v11, v11

    iput-wide v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    .line 235
    const-string v11, "W"

    iput-object v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->unit:Ljava/lang/String;

    .line 237
    :goto_7
    iget-wide v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    add-double/2addr v7, v11

    goto :goto_6

    .line 221
    :pswitch_0
    iget v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->currentPower:I

    int-to-double v11, v11

    iput-wide v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    .line 222
    const-string v11, "W"

    iput-object v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->unit:Ljava/lang/String;

    goto :goto_7

    .line 270
    .end local v5           #rawUidInfo:[B
    .end local v7           #total:D
    .end local v9           #uidInfo:Ledu/umich/PowerTutor/service/UidInfo;
    .end local v10           #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :catch_0
    move-exception v11

    goto :goto_5

    .line 225
    .restart local v5       #rawUidInfo:[B
    .restart local v7       #total:D
    .restart local v9       #uidInfo:Ledu/umich/PowerTutor/service/UidInfo;
    .restart local v10       #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :pswitch_1
    iget-wide v15, v9, Ledu/umich/PowerTutor/service/UidInfo;->totalEnergy:J

    .line 226
    iget-wide v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->runtime:J

    const-wide/16 v17, 0x0

    cmp-long v11, v11, v17

    if-nez v11, :cond_5

    const-wide/16 v11, 0x1

    :goto_8
    div-long v11, v15, v11

    long-to-double v11, v11

    .line 225
    iput-wide v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    .line 227
    const-string v11, "W"

    iput-object v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->unit:Ljava/lang/String;

    goto :goto_7

    .line 271
    .end local v5           #rawUidInfo:[B
    .end local v7           #total:D
    .end local v9           #uidInfo:Ledu/umich/PowerTutor/service/UidInfo;
    .end local v10           #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :catch_1
    move-exception v11

    goto :goto_5

    .line 226
    .restart local v5       #rawUidInfo:[B
    .restart local v7       #total:D
    .restart local v9       #uidInfo:Ledu/umich/PowerTutor/service/UidInfo;
    .restart local v10       #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :cond_5
    iget-wide v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->runtime:J

    goto :goto_8

    .line 230
    :pswitch_2
    iget-wide v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->totalEnergy:J

    long-to-double v11, v11

    iput-wide v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    .line 231
    const-string v11, "J"

    iput-object v11, v9, Ledu/umich/PowerTutor/service/UidInfo;->unit:Ljava/lang/String;

    goto :goto_7

    .line 272
    .end local v5           #rawUidInfo:[B
    .end local v7           #total:D
    .end local v9           #uidInfo:Ledu/umich/PowerTutor/service/UidInfo;
    .end local v10           #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :catch_2
    move-exception v11

    goto :goto_5

    .line 240
    .restart local v5       #rawUidInfo:[B
    .restart local v7       #total:D
    .restart local v10       #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :cond_6
    aget-object v9, v10, v11

    .line 241
    .restart local v9       #uidInfo:Ledu/umich/PowerTutor/service/UidInfo;
    const-wide/high16 v13, 0x4059

    iget-wide v15, v9, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    mul-double/2addr v13, v15

    div-double/2addr v13, v7

    iput-wide v13, v9, Ledu/umich/PowerTutor/service/UidInfo;->percentage:D

    .line 240
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 247
    .end local v9           #uidInfo:Ledu/umich/PowerTutor/service/UidInfo;
    .restart local v1       #i:I
    .restart local v6       #sz:I
    :cond_7
    aget-object v11, v10, v1

    iget v11, v11, Ledu/umich/PowerTutor/service/UidInfo;->uid:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    .line 248
    aget-object v11, v10, v1

    iget-wide v11, v11, Ledu/umich/PowerTutor/service/UidInfo;->percentage:D

    const-wide v13, 0x3fb999999999999aL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_9

    .line 246
    :cond_8
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 252
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_a

    .line 253
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;

    .line 258
    .local v4, powerView:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    :goto_a
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    and-int/lit8 v11, v6, 0x1

    if-nez v11, :cond_b

    const/high16 v11, -0x100

    :goto_b
    invoke-virtual {v4, v11}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->setBackgroundColor(I)V

    .line 261
    aget-object v11, v10, v1

    invoke-virtual {v4, v11, v2}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->init(Ledu/umich/PowerTutor/service/UidInfo;I)V

    .line 262
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 255
    .end local v4           #powerView:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ledu/umich/PowerTutor/ui/PowerTop;->getIntent()Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->obtain(Landroid/app/Activity;Landroid/content/Intent;)Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;

    move-result-object v4

    .line 256
    .restart local v4       #powerView:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a

    .line 273
    .end local v1           #i:I
    .end local v4           #powerView:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    .end local v5           #rawUidInfo:[B
    .end local v6           #sz:I
    .end local v7           #total:D
    .end local v10           #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :catch_3
    move-exception v11

    goto/16 :goto_5

    .line 260
    .restart local v1       #i:I
    .restart local v4       #powerView:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    .restart local v5       #rawUidInfo:[B
    .restart local v6       #sz:I
    .restart local v7       #total:D
    .restart local v10       #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :cond_b
    const v11, -0xddddde

    goto :goto_b

    .line 265
    .end local v4           #powerView:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;

    .line 266
    .restart local v4       #powerView:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    invoke-virtual {v4}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 279
    .end local v1           #i:I
    .end local v4           #powerView:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;
    .end local v5           #rawUidInfo:[B
    .end local v6           #sz:I
    .end local v7           #total:D
    .end local v10           #uidInfos:[Ledu/umich/PowerTutor/service/UidInfo;
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Ledu/umich/PowerTutor/ui/PowerTop;->KEY_NAMES:[Ljava/lang/CharSequence;

    aget-object v12, v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " over "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 280
    sget-object v12, Ledu/umich/PowerTutor/util/Counter;->WINDOW_DESCS:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;

    const-string v14, "topWindowType"

    .line 281
    const/4 v15, 0x3

    .line 280
    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ledu/umich/PowerTutor/ui/PowerTop;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->serviceIntent:Landroid/content/Intent;

    .line 93
    new-instance v1, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;-><init>(Ledu/umich/PowerTutor/ui/PowerTop;Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->conn:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v1, "componentNames"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->componentNames:[Ljava/lang/String;

    .line 96
    const-string v1, "noUidMask"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->noUidMask:I

    .line 99
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    .line 100
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, scrollView:Landroid/widget/ScrollView;
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->topGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 103
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->filterGroup:Landroid/widget/LinearLayout;

    .line 104
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->filterGroup:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->filterGroup:Landroid/widget/LinearLayout;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 106
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->mainView:Landroid/widget/LinearLayout;

    .line 107
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->mainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 108
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->mainView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerTop;->filterGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->mainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 196
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 179
    :pswitch_0
    const-string v1, "Select sort key"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    sget-object v1, Ledu/umich/PowerTutor/ui/PowerTop;->KEY_NAMES:[Ljava/lang/CharSequence;

    new-instance v2, Ledu/umich/PowerTutor/ui/PowerTop$1;

    invoke-direct {v2, p0}, Ledu/umich/PowerTutor/ui/PowerTop$1;-><init>(Ledu/umich/PowerTutor/ui/PowerTop;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 187
    :pswitch_1
    const-string v1, "Select window type"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    sget-object v1, Ledu/umich/PowerTutor/util/Counter;->WINDOW_NAMES:[Ljava/lang/CharSequence;

    .line 189
    new-instance v2, Ledu/umich/PowerTutor/ui/PowerTop$2;

    invoke-direct {v2, p0}, Ledu/umich/PowerTutor/ui/PowerTop$2;-><init>(Ledu/umich/PowerTutor/ui/PowerTop;)V

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    const-string v0, "Display Type"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 145
    const-string v0, "Time Span"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 146
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 171
    :goto_0
    return v0

    .line 165
    :pswitch_0
    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/PowerTop;->showDialog(I)V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/PowerTop;->showDialog(I)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerTop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->conn:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 126
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->handler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 158
    return v2

    .line 156
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->handler:Landroid/os/Handler;

    .line 116
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerTop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->serviceIntent:Landroid/content/Intent;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerTop;->conn:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 119
    invoke-direct {p0}, Ledu/umich/PowerTutor/ui/PowerTop;->refreshView()V

    .line 120
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "componentNames"

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->componentNames:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    const-string v0, "noUidMask"

    iget v1, p0, Ledu/umich/PowerTutor/ui/PowerTop;->noUidMask:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 286
    invoke-direct {p0}, Ledu/umich/PowerTutor/ui/PowerTop;->refreshView()V

    .line 287
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    :cond_0
    return-void
.end method
