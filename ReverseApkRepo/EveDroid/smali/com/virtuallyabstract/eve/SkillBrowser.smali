.class public Lcom/virtuallyabstract/eve/SkillBrowser;
.super Landroid/app/ListActivity;
.source "SkillBrowser.java"


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

.field private from:[Ljava/lang/String;

.field private listMain:Landroid/widget/ListView;

.field private menuLocs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private menuMain:Landroid/view/Menu;

.field private to:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "group"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "skill"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "points"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "rank"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->from:[Ljava/lang/String;

    .line 25
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->to:[I

    .line 19
    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x1bt 0x0t 0x5t 0x7ft
        0x1ct 0x0t 0x5t 0x7ft
        0x1dt 0x0t 0x5t 0x7ft
        0x1et 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/virtuallyabstract/eve/SkillBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/SkillBrowser;->showPlanner()V

    return-void
.end method

.method private populateMainList()V
    .locals 15

    .prologue
    .line 65
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getGroupList()[Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, groups:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 67
    .local v11, rowcount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v7

    if-lt v8, v0, :cond_0

    .line 93
    iget-object v6, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->listMain:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->data:Ljava/util/ArrayList;

    const v3, 0x7f030007

    iget-object v4, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->from:[Ljava/lang/String;

    iget-object v5, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->to:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    return-void

    .line 69
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v10, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    aget-object v1, v7, v8

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getGroupIDByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, groupid:Ljava/lang/String;
    const-string v0, "group"

    aget-object v1, v7, v8

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "skill"

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "points"

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "rank"

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->menuLocs:Ljava/util/HashMap;

    aget-object v1, v7, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v11, v11, 0x1

    .line 79
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0, v6}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillsInGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 80
    .local v13, skills:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, q:I
    :goto_1
    array-length v0, v13

    if-lt v9, v0, :cond_1

    .line 67
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v14, srow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    aget-object v1, v13, v9

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillIDByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 84
    .local v12, skillid:Ljava/lang/String;
    const-string v0, "group"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "skill"

    aget-object v1, v13, v9

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "points"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "rank"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rank: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    const-string v3, "rank"

    invoke-virtual {v2, v12, v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillCol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v11, v11, 0x1

    .line 80
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private showPlanner()V
    .locals 9

    .prologue
    const-string v8, "time"

    const-string v7, "perception"

    const-string v6, "memory"

    const-string v5, "intelligence"

    const-string v4, "charisma"

    .line 49
    const-string v2, ""

    const-string v3, "Showing planner"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, extras:Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/virtuallyabstract/eve/SkillPlanner;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v1, plan:Landroid/content/Intent;
    const-string v2, "name"

    const-string v3, "char"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v2, "time"

    const-string v2, "time"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    const-string v2, "memory"

    const-string v2, "memory"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 55
    const-string v2, "intelligence"

    const-string v2, "intelligence"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 56
    const-string v2, "willpower"

    const-string v3, "willpower"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 57
    const-string v2, "charisma"

    const-string v2, "charisma"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 58
    const-string v2, "perception"

    const-string v2, "perception"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 60
    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/SkillBrowser;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saved"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/SkillBrowser;->setContentView(I)V

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->menuLocs:Ljava/util/HashMap;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->data:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillBrowser;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->listMain:Landroid/widget/ListView;

    .line 39
    const v1, 0x7f050019

    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/SkillBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    .local v0, btnPlanner:Landroid/widget/Button;
    new-instance v1, Lcom/virtuallyabstract/eve/SkillBrowser$1;

    invoke-direct {v1, p0}, Lcom/virtuallyabstract/eve/SkillBrowser$1;-><init>(Lcom/virtuallyabstract/eve/SkillBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v1, Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-direct {v1, p0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    .line 43
    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 44
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/SkillBrowser;->populateMainList()V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->menuMain:Landroid/view/Menu;

    .line 141
    iget-object v2, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->menuMain:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    .line 142
    iget-object v2, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->menuLocs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 143
    .local v0, groups:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 144
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 146
    const/4 v2, 0x1

    return v2

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->menuMain:Landroid/view/Menu;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "l"
    .parameter "v"
    .parameter "pos"
    .parameter "id"

    .prologue
    const-string v9, "perception"

    const-string v8, "memory"

    const-string v7, "intelligence"

    const-string v6, "charisma"

    const-string v5, "char"

    .line 103
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 104
    .local v1, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "skill"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    .local v3, skillname:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v4, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v4}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 108
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/virtuallyabstract/eve/SkillInfo;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v2, skillinfo:Landroid/content/Intent;
    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "char"

    const-string v4, "char"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v4, "memory"

    const-string v4, "memory"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 113
    const-string v4, "intelligence"

    const-string v4, "intelligence"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 114
    const-string v4, "willpower"

    const-string v5, "willpower"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 115
    const-string v4, "charisma"

    const-string v4, "charisma"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 116
    const-string v4, "perception"

    const-string v4, "perception"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/SkillBrowser;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter "featureID"
    .parameter "item"

    .prologue
    .line 151
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->listMain:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->menuLocs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 153
    const/4 v1, 0x1

    return v1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 130
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 123
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 124
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 135
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillBrowser;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 136
    return-void
.end method
