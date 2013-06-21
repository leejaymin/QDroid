.class public final Lcw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcw;->a:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcw;->b:Z

    .line 38
    return-void
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 185
    invoke-static {}, Lcom/kms/antitheft/DataWipeFoldersStorage;->getInstance()Lcom/kms/antitheft/DataWipeFoldersStorage;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/kms/antitheft/DataWipeFoldersStorage;->getFolders()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    .line 187
    iget-object v0, v0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcw;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 192
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_1

    .line 197
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 198
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcw;->a(Ljava/lang/String;Z)V

    .line 201
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 207
    :cond_2
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgr;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 86
    invoke-static {p0}, Lcx;->a(Landroid/content/Context;)V

    .line 88
    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://telephony/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 100
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 107
    const-string v2, "content://telephony/carriers"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_2
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    :try_start_1
    const-string v2, "KMS"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static f(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 132
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v9

    .line 135
    const-string v3, "selected=1"

    .line 136
    const-string v0, "calendar_id=? "

    .line 137
    sget v1, Lcw;->a:I

    const/16 v5, 0xe

    if-lt v1, v5, :cond_1

    .line 138
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v9

    .line 139
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 141
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 142
    const-string v0, "calendar_id=?"

    move-object v6, v0

    move-object v7, v1

    move-object v1, v3

    move-object v3, v4

    .line 154
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    .line 156
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 157
    if-nez v2, :cond_3

    .line 182
    :cond_0
    return-void

    .line 143
    :cond_1
    sget v1, Lcw;->a:I

    const/16 v5, 0x8

    if-lt v1, v5, :cond_2

    .line 144
    const-string v1, "content://com.android.calendar/calendars"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 145
    const-string v1, "content://com.android.calendar/events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    move-object v1, v5

    goto :goto_0

    .line 148
    :cond_2
    const-string v1, "content://calendar/calendars"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 149
    const-string v1, "content://calendar/events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    move-object v1, v5

    goto :goto_0

    .line 162
    :cond_3
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v3, v1, [I

    move v1, v8

    .line 165
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 166
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    .line 170
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_4
    if-eqz v2, :cond_5

    .line 174
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_5
    array-length v2, v3

    move v1, v8

    :goto_2
    if-ge v1, v2, :cond_0

    aget v4, v3, v1

    .line 177
    new-array v5, v9, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    invoke-virtual {v0, v7, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 173
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    .line 174
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method public final a(Z)Lcw;
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcw;->c:Z

    .line 42
    return-object p0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcw;->a()V

    .line 49
    iget-boolean v0, p0, Lcw;->b:Z

    if-eqz v0, :cond_1

    .line 50
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/kms/selfprotection/DeviceAdmin;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcw;->c:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1}, Lcw;->c(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lcw;->d(Landroid/content/Context;)V

    .line 71
    invoke-static {p1}, Lcw;->b(Landroid/content/Context;)V

    .line 72
    invoke-static {p1}, Lcw;->f(Landroid/content/Context;)V

    .line 73
    invoke-static {p1}, Lcw;->e(Landroid/content/Context;)V

    .line 74
    invoke-static {p1}, Lcw;->g(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lgn;->a()Lgn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgn;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
