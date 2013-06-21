.class public Lcom/kms/antivirus/gui/AvCheckObjectsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# static fields
.field private static final a:[[I


# instance fields
.field private b:[Ldk;

.field private c:I

.field private d:Lga;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 24
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

    sput-object v0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x8t 0x7ft
        0x74t 0x0t 0x8t 0x7ft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x8t 0x7ft
        0x76t 0x0t 0x8t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->c:I

    .line 106
    return-void
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    iget v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->c:I

    return v0
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput p1, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->c:I

    return p1
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;)Lga;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->d:Lga;

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a:[[I

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->c:I

    aget-object v0, v0, v1

    .line 48
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 50
    :cond_0
    return-object p2
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->showDialog(I)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->d:Lga;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->b:[Ldk;

    aget-object v2, v2, v3

    iget-boolean v2, v2, Ldk;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lga;->a(ILjava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->d:Lga;

    invoke-virtual {v0}, Lga;->a()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f06000f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 56
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->d:Lga;

    .line 57
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->d:Lga;

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->c:I

    .line 58
    new-array v0, v2, [Ldk;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->b:[Ldk;

    .line 59
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->b:[Ldk;

    sget-object v1, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a:[[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a([Ldk;[[II)V

    .line 60
    const v0, 0x7f080072

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->b:[Ldk;

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a(I[Ldk;)V

    .line 61
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->d:Lga;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a(IZ)V

    .line 62
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_0

    .line 83
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    new-instance v0, LcF;

    invoke-direct {v0, p0}, LcF;-><init>(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;)V

    .line 74
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08021c

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070004

    iget v3, p0, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->c:I

    invoke-virtual {v1, v2, v3, v0}, Les;->a(IILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08021d

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
