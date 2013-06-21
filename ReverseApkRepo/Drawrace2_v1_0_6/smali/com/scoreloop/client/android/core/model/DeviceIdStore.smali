.class public Lcom/scoreloop/client/android/core/model/DeviceIdStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;,
        Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;,
        Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;,
        Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;

.field private final d:Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;

.field private final e:Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->a:Ljava/util/List;

    .line 25
    const-class v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->b:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;

    invoke-direct {v0, p1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->e:Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;

    .line 116
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;

    invoke-direct {v0, p1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->d:Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;

    .line 117
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;

    invoke-direct {v0, p1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->c:Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;

    .line 118
    return-void
.end method

.method private b()Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 134
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    .line 136
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    const-wide/16 v12, 0x7530

    cmp-long v1, v10, v12

    if-lez v1, :cond_0

    move-object v0, v4

    .line 159
    :goto_1
    return-object v0

    .line 142
    :cond_0
    :try_start_0
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 143
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    move v0, v5

    :goto_2
    if-nez v0, :cond_4

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->b:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;->f()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;

    .line 148
    if-eqz v0, :cond_4

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "using device id from: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    move v0, v2

    move v2, v0

    goto :goto_0

    .line 143
    :cond_1
    sget-object v1, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    move v2, v0

    .line 155
    goto :goto_0

    .line 157
    :cond_5
    const-string v0, "scanned %s/%s packages for devices uuid; time=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v4

    .line 159
    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->d:Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;->f()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;->a(Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->e:Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;->f()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;

    .line 172
    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->c:Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->c:Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;->f()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;

    .line 179
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->d:Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    .line 182
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;->a(Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->b()Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;

    move-result-object v0

    .line 190
    :cond_2
    if-nez v0, :cond_3

    .line 191
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->c:Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->c:Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    .line 199
    :cond_4
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->d:Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    .line 200
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;->a(Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 204
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;

    invoke-direct {v0, p1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;-><init>(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->d:Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$c;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    .line 207
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->e:Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    .line 209
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->c:Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->c:Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    .line 213
    :cond_0
    return-void
.end method
