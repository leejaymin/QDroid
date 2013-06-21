.class public Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:LfZ;

.field private b:[Ldk;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 114
    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, ""

    .line 123
    :goto_0
    return-object v0

    .line 117
    :cond_0
    if-eqz p0, :cond_1

    .line 118
    const/16 v0, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 119
    if-ltz v0, :cond_1

    .line 120
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    aget-object v0, v0, v2

    iget-boolean v0, v0, Ldk;->d:Z

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    check-cast v0, Ldj;

    invoke-virtual {v0}, Ldj;->a()I

    move-result v0

    .line 171
    iget-object v3, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    aget-object v3, v3, v4

    iget-boolean v3, v3, Ldk;->d:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 173
    :goto_0
    if-nez v0, :cond_3

    .line 175
    if-eqz p1, :cond_2

    .line 177
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->showDialog(I)V

    :goto_1
    move v0, v1

    .line 189
    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 171
    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, LfZ;->a(ILjava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    invoke-virtual {v0}, LfZ;->a()V

    .line 183
    invoke-virtual {p0, v2, v2}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a(IZ)V

    .line 184
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->d()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 189
    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 127
    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-object p0

    .line 130
    :cond_0
    if-eqz p0, :cond_2

    .line 131
    const/16 v0, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 132
    if-ltz v0, :cond_2

    .line 133
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object p0, v0

    .line 137
    goto :goto_0

    .line 140
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)[Ldk;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 75
    const/16 v0, 0x1b

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    invoke-virtual {v0, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0, v1, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b(IZ)V

    .line 78
    :cond_0
    const/16 v0, 0x21

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b(IZ)V

    .line 81
    :cond_1
    const/16 v0, 0x1c

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-virtual {p0, v2, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b(IZ)V

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b(IZ)V

    .line 85
    :cond_2
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Ldk;->d:Z

    .line 90
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b(IZ)V

    .line 91
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b(IZ)V

    .line 92
    return-void
.end method

.method private f()Ljava/util/List;
    .locals 5

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-static {}, Lcom/kms/antitheft/DataWipeFoldersStorage;->getInstance()Lcom/kms/antitheft/DataWipeFoldersStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/antitheft/DataWipeFoldersStorage;->getFolders()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    .line 103
    new-instance v3, Ldh;

    invoke-direct {v3}, Ldh;-><init>()V

    .line 104
    iput-object v0, v3, Ldh;->a:Ljava/lang/Object;

    .line 105
    iget-object v4, v0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ldh;->b:Ljava/lang/String;

    .line 106
    iget-object v0, v0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ldh;->c:Ljava/lang/String;

    .line 107
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 162
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->c()V

    .line 163
    return-void

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    const/4 v1, 0x3

    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->e(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    invoke-virtual {v0}, LfZ;->a()V

    .line 149
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->d()V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->e(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    invoke-virtual {v0}, LfZ;->a()V

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    const/16 v1, 0x10

    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->e(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    invoke-virtual {v0}, LfZ;->a()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 328
    const v0, 0x7f060027

    return v0
.end method

.method protected final d_()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->c:Z

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 224
    new-instance v0, Lck;

    invoke-direct {v0, p0, p1}, Lck;-><init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;Landroid/view/View;)V

    .line 242
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08014a

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2, v0}, Les;->c(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08014b

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    invoke-virtual {v0}, Ler;->show()V

    .line 247
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x4

    const/4 v2, 0x2

    .line 40
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    iput-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    .line 42
    const/4 v0, 0x5

    new-array v9, v0, [Ldk;

    new-instance v0, Ldk;

    const v1, 0x7f080140

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f080141

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    invoke-virtual {v1, v12}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v8

    new-instance v0, Ldk;

    const v1, 0x7f0802d1

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0802d2

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v11

    new-instance v3, Ldk;

    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v4, p0

    move v5, v11

    invoke-direct/range {v3 .. v8}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v3, v9, v2

    new-instance v0, Ldk;

    const v1, 0x7f080142

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f080143

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a:LfZ;

    invoke-virtual {v1, v10}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v12

    new-instance v0, Ldj;

    const v1, 0x7f080145

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f080146

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;

    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->f()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldj;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    aput-object v0, v9, v10

    iput-object v9, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    .line 65
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    aget-object v0, v0, v10

    check-cast v0, Ldj;

    invoke-virtual {v0, p0}, Ldj;->a(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    aget-object v0, v0, v10

    check-cast v0, Ldj;

    invoke-virtual {v0, p0}, Ldj;->a(Landroid/view/View$OnLongClickListener;)V

    .line 67
    const v0, 0x7f08013f

    iget-object v1, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a(I[Ldk;)V

    .line 68
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->d()V

    .line 69
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->c()V

    .line 71
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->c(I)V

    .line 72
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 251
    packed-switch p1, :pswitch_data_0

    .line 321
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 255
    :pswitch_0
    new-instance v0, Lcl;

    invoke-direct {v0, p0}, Lcl;-><init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)V

    .line 264
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08014c

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f08014e

    invoke-virtual {v1, v2}, Les;->b(I)Les;

    move-result-object v1

    const v2, 0x7f08014b

    invoke-virtual {v1, v2, v3}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08014d

    invoke-virtual {v1, v2, v0}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 274
    :pswitch_1
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f080150

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f080152

    new-instance v2, Lcm;

    invoke-direct {v2, p0}, Lcm;-><init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f080151

    invoke-virtual {v0, v1, v3}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 286
    new-instance v1, Lcn;

    invoke-direct {v1, p0}, Lcn;-><init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 298
    :pswitch_2
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f080154

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f080156

    new-instance v2, Lco;

    invoke-direct {v2, p0}, Lco;-><init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f080155

    invoke-virtual {v0, v1, v3}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 310
    new-instance v1, Lcp;

    invoke-direct {v1, p0}, Lcp;-><init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 195
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 197
    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSCommonSettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->onClick(Landroid/view/View;)V

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onPause()V

    .line 209
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->c:Z

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a(Z)Z

    .line 213
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->c:Z

    .line 214
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b:[Ldk;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Ldj;

    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldj;->a(Ljava/util/List;)V

    .line 220
    return-void
.end method
