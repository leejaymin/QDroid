.class public final Lccc71/utils/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lccc71/utils/b/e;->d:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lccc71/utils/b/e;->e:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/utils/b/e;->f:Z

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;I)Lccc71/utils/b/e;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    const-string v0, ""

    .line 111
    const-string v3, ""

    .line 114
    new-instance v4, Lccc71/utils/b/e;

    invoke-direct {v4}, Lccc71/utils/b/e;-><init>()V

    .line 115
    iput p1, v4, Lccc71/utils/b/e;->c:I

    .line 116
    iput-object v0, v4, Lccc71/utils/b/e;->d:Ljava/lang/String;

    .line 117
    iput-object v3, v4, Lccc71/utils/b/e;->e:Ljava/lang/String;

    .line 118
    iput-boolean v1, v4, Lccc71/utils/b/e;->f:Z

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 122
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 124
    sput-object v0, Lccc71/utils/b/e;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    iput-object v0, v4, Lccc71/utils/b/e;->d:Ljava/lang/String;

    move-object v0, v4

    .line 175
    :goto_0
    return-object v0

    .line 132
    :cond_0
    sget-object v0, Lccc71/utils/b/e;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lccc71/utils/b/e;->b:[Ljava/lang/String;

    .line 133
    sget-object v0, Lccc71/utils/b/e;->a:[Ljava/lang/String;

    sget-object v6, Lccc71/utils/b/e;->b:[Ljava/lang/String;

    sget-object v7, Lccc71/utils/b/e;->a:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v0, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 135
    :goto_1
    sget-object v6, Lccc71/utils/b/e;->b:[Ljava/lang/String;

    array-length v6, v6

    if-lt v0, v6, :cond_1

    .line 140
    sget-object v0, Lccc71/utils/b/e;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v2, :cond_2

    .line 142
    sget-object v0, Lccc71/utils/b/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 143
    sget-object v3, Lccc71/utils/b/e;->b:[Ljava/lang/String;

    aget-object v1, v3, v1

    move v11, v2

    move-object v2, v1

    move v1, v11

    .line 171
    :goto_2
    iput-object v2, v4, Lccc71/utils/b/e;->d:Ljava/lang/String;

    .line 172
    iput-object v0, v4, Lccc71/utils/b/e;->e:Ljava/lang/String;

    .line 173
    iput-boolean v1, v4, Lccc71/utils/b/e;->f:Z

    move-object v0, v4

    .line 175
    goto :goto_0

    .line 137
    :cond_1
    sget-object v6, Lccc71/utils/b/e;->b:[Ljava/lang/String;

    sget-object v7, Lccc71/utils/b/e;->b:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-static {p0, v7}, Lccc71/utils/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_2
    const-string v0, "UID"

    .line 150
    sget-object v6, Lccc71/utils/b/e;->a:[Ljava/lang/String;

    array-length v7, v6

    move v2, v1

    :goto_3
    if-lt v2, v7, :cond_3

    move-object v2, v0

    move-object v0, v3

    goto :goto_2

    :cond_3
    aget-object v8, v6, v2

    .line 154
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 155
    iget v10, v9, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v10, :cond_4

    .line 158
    iget v10, v9, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 157
    invoke-virtual {v5, v8, v10, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 159
    if-eqz v8, :cond_4

    .line 161
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    .line 162
    goto :goto_2

    .line 166
    :catch_0
    move-exception v8

    .line 150
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 105
    :cond_0
    :goto_0
    return-object p1

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lccc71/utils/b/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lccc71/utils/b/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UidInfo [m_uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lccc71/utils/b/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_uidName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/b/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string v1, ", m_uidNamePackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/b/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string v1, ", m_uidUniqueName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lccc71/utils/b/e;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
