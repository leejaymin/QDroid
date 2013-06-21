.class Lcom/virtuallyabstract/eve/SkillsDBHelper$Populate;
.super Ljava/lang/Object;
.source "SkillsDBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virtuallyabstract/eve/SkillsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Populate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/virtuallyabstract/eve/SkillsDBHelper;


# direct methods
.method private constructor <init>(Lcom/virtuallyabstract/eve/SkillsDBHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/virtuallyabstract/eve/SkillsDBHelper$Populate;->this$0:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/virtuallyabstract/eve/SkillsDBHelper;Lcom/virtuallyabstract/eve/SkillsDBHelper$Populate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/virtuallyabstract/eve/SkillsDBHelper$Populate;-><init>(Lcom/virtuallyabstract/eve/SkillsDBHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v2, "POPULATE"

    .line 92
    const-string v1, "POPULATE"

    const-string v1, "POPULATE"

    invoke-static {v2, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Lcom/virtuallyabstract/eve/XMLHandler;

    invoke-direct {v0}, Lcom/virtuallyabstract/eve/XMLHandler;-><init>()V

    .line 94
    .local v0, skillHandler:Lcom/virtuallyabstract/eve/XMLHandler;
    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillsDBHelper$Populate;->this$0:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    #getter for: Lcom/virtuallyabstract/eve/SkillsDBHelper;->SKILLTREE:Ljava/lang/String;
    invoke-static {v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->access$0(Lcom/virtuallyabstract/eve/SkillsDBHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/XMLHandler;->parse(Ljava/lang/String;)V

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillsDBHelper$Populate;->this$0:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    #getter for: Lcom/virtuallyabstract/eve/SkillsDBHelper;->dbMain:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->access$1(Lcom/virtuallyabstract/eve/SkillsDBHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "delete from skills"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillsDBHelper$Populate;->this$0:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    #getter for: Lcom/virtuallyabstract/eve/SkillsDBHelper;->dbMain:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->access$1(Lcom/virtuallyabstract/eve/SkillsDBHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "delete from groups"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillsDBHelper$Populate;->this$0:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v1, v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->populateGroups(Lcom/virtuallyabstract/eve/XMLHandler;)V

    .line 102
    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillsDBHelper$Populate;->this$0:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v1, v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->populateSkills(Lcom/virtuallyabstract/eve/XMLHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    goto :goto_0
.end method
