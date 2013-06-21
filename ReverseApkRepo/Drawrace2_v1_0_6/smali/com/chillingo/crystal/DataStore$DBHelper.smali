.class Lcom/chillingo/crystal/DataStore$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/DataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHelper"
.end annotation


# static fields
.field private static final KDatabaseName:Ljava/lang/String; = "Crystal.db"

.field private static final KDatabaseVersion:I = 0x1

.field private static final KTableAchievements:Ljava/lang/String; = "Achievements"

.field private static final KTableAchievementsGot:Ljava/lang/String; = "Got"

.field private static final KTableAchievementsId:Ljava/lang/String; = "Id"

.field private static final KTableAchievementsPopUpShown:Ljava/lang/String; = "PopUpShown"

.field private static final KTableCache:Ljava/lang/String; = "Cache"

.field private static final KTableCacheImage:Ljava/lang/String; = "Image"

.field private static final KTableCacheJson:Ljava/lang/String; = "Json"

.field private static final KTableCacheUrl:Ljava/lang/String; = "Url"

.field private static final KTableLockedGoods:Ljava/lang/String; = "LockedGoods"

.field private static final KTableLockedGoodsGood:Ljava/lang/String; = "Good"

.field private static final KTableLogin:Ljava/lang/String; = "Login"

.field private static final KTableLoginTosAccepted:Ljava/lang/String; = "TosAccepted"

.field private static final KTableLoginUiActivated:Ljava/lang/String; = "UiActivated"

.field private static final KTableLoginUiTimer:Ljava/lang/String; = "UiTimer"

.field private static final KTablePosts:Ljava/lang/String; = "Posts"

.field private static final KTablePostsJson:Ljava/lang/String; = "Json"

.field private static final KTablePostsUrl:Ljava/lang/String; = "Url"

.field private static final KTablePush:Ljava/lang/String; = "Push"

.field private static final KTablePushPendingKey:Ljava/lang/String; = "Pending"

.field private static final KTablePushRegistered:Ljava/lang/String; = "Registered"

.field private static final KTableReadyUsage:Ljava/lang/String; = "ReadyUsage"

.field private static final KTableReplacement:Ljava/lang/String; = "Replacement"

.field private static final KTableReplacementText:Ljava/lang/String; = "RepText"

.field private static final KTableReplacementToken:Ljava/lang/String; = "Token"

.field private static final KTableScores:Ljava/lang/String; = "Scores"

.field private static final KTableScoresLeaderboard:Ljava/lang/String; = "Leaderboard"

.field private static final KTableScoresScore:Ljava/lang/String; = "Score"

.field private static final KTableSettings:Ljava/lang/String; = "Settings"

.field private static final KTableSettingsAppId:Ljava/lang/String; = "AppId"

.field private static final KTableSettingsChallengeConfig:Ljava/lang/String; = "ChallengeConfig"

.field private static final KTableSettingsChallengeID:Ljava/lang/String; = "ChallengeID"

.field private static final KTableSettingsCurrentSessionLength:Ljava/lang/String; = "SessionLength"

.field private static final KTableSettingsFacebookPermission:Ljava/lang/String; = "FacebookPermission"

.field private static final KTableSettingsFirstRun:Ljava/lang/String; = "FirstRun"

.field private static final KTableSettingsHaveSeenGlobalNews:Ljava/lang/String; = "HaveSeenGlobalNews"

.field private static final KTableSettingsLoggedIn:Ljava/lang/String; = "LoggedIn"

.field private static final KTableSettingsSessionTimeStamp:Ljava/lang/String; = "SessionTimeStamp"

.field private static final KTableSettingsSignInTime:Ljava/lang/String; = "SignInTime"

.field private static final KTableUsage:Ljava/lang/String; = "Usage"

.field private static final KTableUsageData:Ljava/lang/String; = "Data"

.field private static final KTableUsageId:Ljava/lang/String; = "Id"


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/DataStore;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/DataStore;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/DataStore$DBHelper;->this$0:Lcom/chillingo/crystal/DataStore;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private makeVersion1Db(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "DataStore Running script to make version 1 database"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "create table Cache(Url text not null primary key, Json text not null, Image blob null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table Replacement(Token text not null primary key, RepText text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table Usage(Id integer primary key autoincrement, Data text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table ReadyUsage(Id integer, Data text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table Achievements(Id text not null primary key, Got integer not null, PopUpShown integer not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table Scores(Leaderboard text not null primary key, Score real not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table Posts(Url text not null, Json text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table Settings(HaveSeenGlobalNews integer null, SessionLength integer null, SessionTimeStamp integer null, ChallengeID text null, ChallengeConfig text null, FirstRun integer null, LoggedIn integer null, SignInTime integer null, FacebookPermission integer null, AppId text null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table Push(Registered integer null, Pending text null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table LockedGoods(Good text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table Login(TosAccepted integer null, UiActivated integer null, UiTimer integer null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "DataStore - Need to create the database"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/DataStore$DBHelper;->makeVersion1Db(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataStore - Need to upgrade the database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
