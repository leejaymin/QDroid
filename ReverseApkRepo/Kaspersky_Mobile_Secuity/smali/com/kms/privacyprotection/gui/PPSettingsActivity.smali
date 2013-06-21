.class public Lcom/kms/privacyprotection/gui/PPSettingsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[[I


# instance fields
.field private c:[Ldk;

.field private d:I

.field private e:[Z

.field private f:Lgf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a:[I

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b:[[I

    return-void

    .line 23
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    .line 29
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x8t 0x7ft
        0x8bt 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x8t 0x7ft
        0x86t 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x88t 0x0t 0x8t 0x7ft
        0x89t 0x0t 0x8t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->d:I

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    .line 161
    return-void
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->d:I

    return v0
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PPSettingsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->d:I

    return p1
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PPSettingsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)Lgf;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c()[I
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a:[I

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)[Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    return-object v0
.end method

.method public static synthetic d()[[I
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b:[[I

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    const/16 v0, 0x14

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(IZ)V

    .line 118
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(IZ)V

    .line 120
    :cond_0
    invoke-static {}, Lgj;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0, v1, v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(IZ)V

    .line 125
    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    iget-object v2, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    iget-boolean v2, v2, Lgf;->c:Z

    aput-boolean v2, v1, v0

    .line 129
    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    iget-boolean v3, v3, Lgf;->d:Z

    aput-boolean v3, v1, v2

    .line 130
    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    iget-boolean v3, v3, Lgf;->g:Z

    aput-boolean v3, v1, v2

    .line 131
    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    iget-boolean v3, v3, Lgf;->e:Z

    aput-boolean v3, v1, v2

    .line 132
    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    iget-boolean v3, v3, Lgf;->f:Z

    aput-boolean v3, v1, v2

    .line 133
    :goto_0
    sget-object v1, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    iget-wide v1, v1, Lgf;->i:J

    long-to-int v1, v1

    sget-object v2, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 137
    iput v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->d:I

    .line 141
    :cond_0
    return-void

    .line 133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f07000a

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 53
    packed-switch p1, :pswitch_data_0

    .line 87
    :goto_0
    return-object p2

    .line 57
    :pswitch_0
    iget v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->d:I

    if-eqz v0, :cond_0

    .line 58
    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a:[I

    iget v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->d:I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 60
    :cond_0
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 64
    :pswitch_1
    const/4 v0, 0x0

    move v1, v2

    .line 65
    :goto_1
    iget-object v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 67
    iget-object v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    .line 69
    if-nez v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 65
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 79
    :cond_3
    if-nez v0, :cond_4

    .line 81
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_4
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 266
    packed-switch p1, :pswitch_data_0

    .line 280
    :goto_0
    return-void

    .line 269
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c:[Ldk;

    aget-object v1, v1, v2

    iget-boolean v1, v1, Ldk;->d:Z

    iput-boolean v1, v0, Lgf;->h:Z

    .line 274
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    invoke-virtual {v0}, Lgf;->a()V

    goto :goto_0

    .line 277
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 291
    const v0, 0x7f060021

    return v0
.end method

.method protected final e()Z
    .locals 2

    .prologue
    .line 284
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 285
    iget-boolean v0, v0, Lgf;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 95
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    .line 97
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->g()V

    .line 98
    new-array v0, v3, [Ldk;

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c:[Ldk;

    .line 99
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c:[Ldk;

    sget-object v1, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b:[[I

    invoke-virtual {p0, v0, v1, v3}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a([Ldk;[[II)V

    .line 101
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c:[Ldk;

    aget-object v0, v0, v2

    iget v0, v0, Ldk;->a:I

    if-ne v0, v2, :cond_0

    .line 103
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c:[Ldk;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f:Lgf;

    iget-boolean v1, v1, Lgf;->h:Z

    iput-boolean v1, v0, Ldk;->d:Z

    .line 107
    :cond_0
    const v0, 0x7f080084

    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c:[Ldk;

    invoke-virtual {p0, v0, v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a(I[Ldk;)V

    .line 108
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->f()V

    .line 110
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c(I)V

    .line 111
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 259
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 229
    :pswitch_0
    new-instance v0, LgH;

    invoke-direct {v0, p0}, LgH;-><init>(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)V

    .line 231
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080090

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070001

    iget v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->d:I

    invoke-virtual {v1, v2, v3, v0}, Les;->a(IILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f080091

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 242
    :pswitch_1
    new-instance v0, LgI;

    invoke-direct {v0, p0}, LgI;-><init>(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)V

    .line 244
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f07000a

    iget-object v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    invoke-virtual {v1, v2, v3, v0}, Les;->a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08008f

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08008e

    invoke-virtual {v1, v2, v0}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 201
    if-ne p1, v1, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->g()V

    .line 204
    new-instance v0, LgI;

    invoke-direct {v0, p0}, LgI;-><init>(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->removeDialog(I)V

    .line 208
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f07000a

    iget-object v3, p0, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->e:[Z

    invoke-virtual {v1, v2, v3, v0}, Les;->a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08008f

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08008e

    invoke-virtual {v1, v2, v0}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    .line 218
    :cond_0
    return-void
.end method
