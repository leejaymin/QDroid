.class public Lcom/wareone/tappmt/PmtDbAdapter$DeleteLogs;
.super Ljava/lang/Object;
.source "PmtDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/PmtDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteLogs"
.end annotation


# static fields
.field public static final FIELDS:[Ljava/lang/String; = null

.field public static final ID:Ljava/lang/String; = "row_id"

.field public static final NAME:Ljava/lang/String; = "table_name"

.field public static final TABLE_NAME:Ljava/lang/String; = "dellogs"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 779
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "row_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "table_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter$DeleteLogs;->FIELDS:[Ljava/lang/String;

    .line 775
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 5
    .parameter "db"
    .parameter "row_id"

    .prologue
    .line 792
    const-string v0, "dellogs"

    const-string v1, "row_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 787
    const-string v1, "dellogs"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$DeleteLogs;->FIELDS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "db"
    .parameter "values"

    .prologue
    .line 782
    const-string v0, "dellogs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method
