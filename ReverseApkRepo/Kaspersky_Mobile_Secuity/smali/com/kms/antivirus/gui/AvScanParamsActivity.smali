.class public Lcom/kms/antivirus/gui/AvScanParamsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# static fields
.field private static final a:[[I


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[Ldk;

.field private g:Lga;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a:[[I

    return-void

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x8t 0x7ft
        0x62t 0x0t 0x8t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x8t 0x7ft
        0x65t 0x0t 0x8t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x8t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x8t 0x7ft
        0x69t 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x8t 0x7ft
        0x6bt 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x8t 0x7ft
        0x6dt 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    .line 71
    iput v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b:I

    .line 72
    iput v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c:I

    .line 73
    iput v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d:I

    .line 74
    iput v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->e:I

    .line 329
    return-void
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvScanParamsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b:I

    return p1
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvScanParamsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvScanParamsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c:I

    return p1
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvScanParamsActivity;)Lga;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvScanParamsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/kms/antivirus/gui/AvScanParamsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d:I

    return p1
.end method

.method public static synthetic c(Lcom/kms/antivirus/gui/AvScanParamsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d()V

    return-void
.end method

.method public static synthetic c(Lcom/kms/antivirus/gui/AvScanParamsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c()[[I
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a:[[I

    return-object v0
.end method

.method public static synthetic d(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c:I

    return v0
.end method

.method public static synthetic d(Lcom/kms/antivirus/gui/AvScanParamsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->e:I

    return p1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-virtual {v0}, Lga;->a()V

    .line 300
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->d()V

    .line 301
    return-void
.end method

.method public static synthetic e(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d:I

    return v0
.end method

.method public static synthetic f(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->e:I

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    return-object p2

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 102
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-virtual {v0, v5}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    .line 105
    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080063

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-virtual {v0, v4}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 116
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 118
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    .line 119
    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080066

    invoke-virtual {p0, v2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 127
    :pswitch_3
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b:I

    aget-object v0, v0, v1

    .line 128
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 131
    :pswitch_4
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c:I

    aget-object v0, v0, v1

    .line 132
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 135
    :pswitch_5
    const v0, 0xea60

    iget v1, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->e:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 136
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    .line 137
    sub-long/2addr v0, v2

    invoke-static {p0, v0, v1, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 241
    packed-switch p1, :pswitch_data_0

    .line 271
    :goto_0
    :pswitch_0
    return-void

    .line 245
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 257
    :pswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->showDialog(I)V

    goto :goto_0

    .line 262
    :pswitch_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->showDialog(I)V

    goto :goto_0

    .line 267
    :pswitch_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->showDialog(I)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 350
    const v0, 0x7f060010

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v3, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x6

    const/4 v2, 0x0

    .line 151
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    .line 152
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-virtual {v0, v9}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b:I

    .line 153
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-virtual {v0, v3}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 156
    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lga;->a(ILjava/lang/Object;)V

    .line 161
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 162
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 163
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 164
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 165
    add-int/lit8 v0, v0, -0x1

    .line 166
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 167
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 168
    const-wide/32 v0, 0x52571a0

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Lga;->a(ILjava/lang/Object;)V

    .line 172
    iget-object v3, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lga;->a(ILjava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-virtual {v0}, Lga;->a()V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-virtual {v0, v7}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 178
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->g:Lga;

    invoke-virtual {v0, v8}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 179
    add-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c:I

    .line 180
    const-wide/32 v0, 0xea60

    div-long v0, v3, v0

    const-wide/16 v5, 0x3c

    rem-long/2addr v0, v5

    long-to-int v0, v0

    iput v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->e:I

    .line 181
    const-wide/32 v0, 0x36ee80

    div-long v0, v3, v0

    const-wide/16 v3, 0x18

    rem-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d:I

    .line 183
    new-array v0, v7, [Ldk;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->f:[Ldk;

    .line 184
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->f:[Ldk;

    sget-object v1, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a:[[I

    invoke-virtual {p0, v0, v1, v7}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a([Ldk;[[II)V

    .line 186
    const v0, 0x7f080060

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->f:[Ldk;

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(I[Ldk;)V

    .line 187
    iget v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b:I

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p0, v9, v2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(IZ)V

    .line 191
    :cond_2
    iget v0, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v8, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(IZ)V

    .line 192
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    return-void

    :cond_3
    move v0, v2

    .line 191
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 235
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 203
    :pswitch_0
    new-instance v0, LcR;

    invoke-direct {v0, p0}, LcR;-><init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;)V

    .line 204
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08006e

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070007

    iget v3, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b:I

    invoke-virtual {v1, v2, v3, v0}, Les;->a(IILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08006f

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_1
    new-instance v0, LcQ;

    invoke-direct {v0, p0}, LcQ;-><init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;)V

    .line 217
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080070

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070009

    iget v3, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c:I

    invoke-virtual {v1, v2, v3, v0}, Les;->a(IILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f080071

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_2
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 230
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, LcS;

    invoke-direct {v2, p0}, LcS;-><init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;)V

    iget v3, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d:I

    iget v4, p0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->e:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    if-eqz p1, :cond_0

    .line 88
    sget-object v0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a:[[I

    aget-object v0, v0, v1

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(ILjava/lang/String;)V

    .line 89
    sget-object v0, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a:[[I

    aget-object v0, v0, v2

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(ILjava/lang/String;)V

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onWindowFocusChanged(Z)V

    .line 92
    return-void
.end method
