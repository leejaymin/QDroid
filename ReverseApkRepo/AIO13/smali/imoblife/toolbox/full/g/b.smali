.class public final Limoblife/toolbox/full/g/b;
.super Limoblife/toolbox/full/d/a;


# instance fields
.field a:I

.field b:I

.field c:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:J

.field private g:Landroid/content/pm/PackageManager;

.field private h:Landroid/app/ActivityManager;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Limoblife/toolbox/full/d/a;-><init>()V

    iput v0, p0, Limoblife/toolbox/full/g/b;->a:I

    iput v0, p0, Limoblife/toolbox/full/g/b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Limoblife/toolbox/full/g/b;->c:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iput-object p1, p0, Limoblife/toolbox/full/g/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/g/b;->g:Landroid/content/pm/PackageManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Limoblife/toolbox/full/g/b;->h:Landroid/app/ActivityManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/g/b;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/g/b;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/g/b;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->d:Landroid/content/Context;

    invoke-static {v0}, Limoblife/toolbox/full/h/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/h/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/h/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->d:Landroid/content/Context;

    invoke-static {v0}, Limoblife/toolbox/full/h/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/h/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/h/a;->a()V

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->d:Landroid/content/Context;

    invoke-static {v0}, Limoblife/toolbox/full/h/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/h/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/h/a;->c()V

    :cond_0
    invoke-direct {p0}, Limoblife/toolbox/full/g/b;->e()V

    invoke-direct {p0}, Limoblife/toolbox/full/g/b;->h()V

    return-void
.end method

.method private e()V
    .locals 4

    new-instance v0, Limoblife/toolbox/full/c/a;

    iget-object v1, p0, Limoblife/toolbox/full/g/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Limoblife/toolbox/full/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->a()Limoblife/toolbox/full/c/a;

    iget-object v1, p0, Limoblife/toolbox/full/g/b;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->d()Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->b()V

    return-void

    :cond_0
    const-string v2, "_pkgName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Limoblife/toolbox/full/g/b;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(=) clearKillList(): _kill_list.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private g()J
    .locals 2

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v1, p0, Limoblife/toolbox/full/g/b;->h:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->h:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/g/b;->i:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(=) retrieveProcessList(): _process_list.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Limoblife/toolbox/full/g/b;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "examine()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Limoblife/toolbox/full/g/b;->h()V

    invoke-direct {p0}, Limoblife/toolbox/full/g/b;->f()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Limoblife/toolbox/full/g/b;->f:J

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Limoblife/toolbox/full/g/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Limoblife/toolbox/full/g/b;->d:Landroid/content/Context;

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    iget-wide v0, p0, Limoblife/toolbox/full/g/b;->f:J

    invoke-virtual {p0}, Limoblife/toolbox/full/g/b;->d()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(=) retrieveProcess(): _killList.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/g/b;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v5, v6, v2

    iget-object v5, p0, Limoblife/toolbox/full/g/b;->h:Landroid/app/ActivityManager;

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v5

    aget-object v5, v5, v2

    iget v5, v5, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    int-to-long v5, v5

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    iget-wide v7, p0, Limoblife/toolbox/full/g/b;->f:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Limoblife/toolbox/full/g/b;->f:J

    iput v1, p0, Limoblife/toolbox/full/g/b;->a:I

    iput v3, p0, Limoblife/toolbox/full/g/b;->b:I

    iput-object v0, p0, Limoblife/toolbox/full/g/b;->c:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p0}, Limoblife/toolbox/full/g/b;->e()V

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(-) addKillList(): _white_list.size() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Limoblife/toolbox/full/g/b;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(-) addKillList(): ignore whitelist pkgName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(+) addKillList(): pkgName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Limoblife/toolbox/full/g/b;->b:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->c:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_2

    iget v0, p0, Limoblife/toolbox/full/g/b;->a:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xa

    iget v5, p0, Limoblife/toolbox/full/g/b;->b:I

    div-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x0

    int-to-long v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Scanning process "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Limoblife/toolbox/full/g/b;->c:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-virtual {p0, v4, v5, v6, v0}, Limoblife/toolbox/full/g/b;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;JLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addKillList(): onCommandExamining() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Limoblife/toolbox/full/g/b;->c:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    iput-object p1, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(=) setKillList(): _kill_list.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->d:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Limoblife/toolbox/full/g/b;->d:Landroid/content/Context;

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Limoblife/toolbox/full/g/b;->a(Landroid/content/Context;JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Limoblife/toolbox/full/g/b;->g()J

    move-result-wide v2

    iput v1, p0, Limoblife/toolbox/full/g/b;->e:I

    iget-object v0, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-lt v1, v4, :cond_2

    invoke-direct {p0}, Limoblife/toolbox/full/g/b;->f()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "(=) killProcess(): _killList.size() = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Limoblife/toolbox/full/g/b;->g()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    iget-object v1, p0, Limoblife/toolbox/full/g/b;->d:Landroid/content/Context;

    iget v0, p0, Limoblife/toolbox/full/g/b;->e:I

    int-to-long v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Limoblife/toolbox/full/g/b;->a(Landroid/content/Context;JJ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Limoblife/toolbox/full/g/b;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Limoblife/toolbox/full/g/b;->h:Landroid/app/ActivityManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Limoblife/toolbox/full/g/b;->h:Landroid/app/ActivityManager;

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    :cond_3
    iget v5, p0, Limoblife/toolbox/full/g/b;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Limoblife/toolbox/full/g/b;->e:I

    mul-int/lit8 v5, v1, 0x64

    div-int/2addr v5, v4

    int-to-long v5, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Killing "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Limoblife/toolbox/full/g/b;->a(JLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(X) killProcess(): pkgName = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
