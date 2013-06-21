.class public Lcom/kms/antivirus/gui/AvMonitorParamsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# static fields
.field private static final a:[[I


# instance fields
.field private b:[Ldk;

.field private c:I

.field private d:I

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x8t 0x7ft
        0x56t 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x8t 0x7ft
        0x58t 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    .line 27
    return-void
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->c:I

    return p1
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->c:I

    return v0
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->d:I

    return p1
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a:[[I

    return-object v0
.end method

.method public static synthetic d(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->d:I

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 51
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    return-object p2

    .line 54
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->e:[Ljava/lang/String;

    iget v2, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->c:I

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 56
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->f:[Ljava/lang/String;

    iget v2, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->d:I

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 125
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->showDialog(I)V

    goto :goto_0

    .line 135
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->showDialog(I)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 210
    const v0, 0x7f06000d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 65
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    .line 66
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    .line 67
    check-cast v0, Lge;

    .line 68
    const-class v1, Lge;

    monitor-enter v1

    .line 69
    :try_start_0
    invoke-virtual {v0}, Lge;->a()V

    .line 71
    iget v2, v0, Lge;->b:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 72
    const/4 v2, 0x1

    iput v2, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->c:I

    .line 76
    :goto_0
    iget v0, v0, Lge;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->d:I

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->g:Lcom/kms/kmsshared/KMSApplication;

    .line 80
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->e:[Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->f:[Ljava/lang/String;

    .line 83
    new-array v0, v4, [Ldk;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->b:[Ldk;

    .line 84
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->b:[Ldk;

    sget-object v1, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a:[[I

    invoke-virtual {p0, v0, v1, v4}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a([Ldk;[[II)V

    .line 87
    const v0, 0x7f080054

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->b:[Ldk;

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a(I[Ldk;)V

    .line 88
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    return-void

    .line 74
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 98
    :pswitch_0
    new-instance v0, LcH;

    invoke-direct {v0, p0}, LcH;-><init>(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)V

    .line 100
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070003

    iget v3, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->c:I

    invoke-virtual {v1, v2, v3, v0}, Les;->a(IILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08005a

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_1
    new-instance v0, LcG;

    invoke-direct {v0, p0}, LcG;-><init>(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)V

    .line 111
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08005b

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070005

    iget v3, p0, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->d:I

    invoke-virtual {v1, v2, v3, v0}, Les;->a(IILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08005c

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
