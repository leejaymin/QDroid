.class public Lcom/kms/antitheft/DataWipeFoldersStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Lcom/kms/antitheft/DataWipeFoldersStorage; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mFolders:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/antitheft/DataWipeFoldersStorage;->a:Lcom/kms/antitheft/DataWipeFoldersStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage;->mFolders:Ljava/util/HashSet;

    .line 79
    return-void
.end method

.method private static a()Lcom/kms/antitheft/DataWipeFoldersStorage;
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/io/File;

    const-string v2, "smscleanfolders.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    invoke-static {v1}, LS;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kms/antitheft/DataWipeFoldersStorage;

    .line 52
    if-nez v0, :cond_0

    new-instance v0, Lcom/kms/antitheft/DataWipeFoldersStorage;

    invoke-direct {v0}, Lcom/kms/antitheft/DataWipeFoldersStorage;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/kms/antitheft/DataWipeFoldersStorage;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/kms/antitheft/DataWipeFoldersStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kms/antitheft/DataWipeFoldersStorage;->a:Lcom/kms/antitheft/DataWipeFoldersStorage;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/kms/antitheft/DataWipeFoldersStorage;->a()Lcom/kms/antitheft/DataWipeFoldersStorage;

    move-result-object v0

    sput-object v0, Lcom/kms/antitheft/DataWipeFoldersStorage;->a:Lcom/kms/antitheft/DataWipeFoldersStorage;

    .line 73
    :cond_0
    sget-object v0, Lcom/kms/antitheft/DataWipeFoldersStorage;->a:Lcom/kms/antitheft/DataWipeFoldersStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addFolder(Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage;->mFolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage;->mFolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    return-void
.end method

.method public getFolders()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage;->mFolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 86
    return-object v0
.end method

.method public removeAllFolders()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage;->mFolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 101
    return-void
.end method

.method public removeFolder(Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage;->mFolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public toFile()V
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/io/File;

    const-string v2, "smscleanfolders.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-static {v1, p0}, LS;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 62
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method
