.class public Lcom/virtuallyabstract/eve/SkillPlanner;
.super Landroid/app/ListActivity;
.source "SkillPlanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;
    }
.end annotation


# instance fields
.field db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

.field listMain:Landroid/widget/ListView;

.field name:Ljava/lang/String;

.field planList:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field planToInt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/virtuallyabstract/eve/SkillPlanner;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->populatePlans()V

    return-void
.end method

.method private populatePlans()V
    .locals 5

    .prologue
    .line 52
    iget-object v3, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->planList:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 53
    iget-object v3, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->planToInt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 54
    const-string v3, "populate"

    const-string v4, "POPULATING PLANS"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v3, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillPlans(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v2

    .line 56
    .local v2, plans:[Ljava/lang/Integer;
    iget-object v3, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->planList:Landroid/widget/ArrayAdapter;

    const-string v4, "New Plan"

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->listMain:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->planList:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    return-void

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getPlanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->planToInt:Ljava/util/ArrayList;

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v3, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->planList:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "saved"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/SkillPlanner;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->listMain:Landroid/widget/ListView;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->planToInt:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-direct {v1, p0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    .line 38
    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 40
    const v1, 0x7f050026

    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/SkillPlanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    .local v0, txtName:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'s Skill Plans"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->planList:Landroid/widget/ArrayAdapter;

    .line 45
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->populatePlans()V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 68
    const-string v0, "Add fake plans"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 91
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, name:Ljava/lang/String;
    const-string v3, "New Plan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    new-instance v2, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;

    invoke-direct {v2, p0, p0}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;-><init>(Lcom/virtuallyabstract/eve/SkillPlanner;Landroid/content/Context;)V

    .line 95
    .local v2, test:Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;
    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->show()V

    .line 109
    .end local v2           #test:Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;
    .end local p1
    :goto_0
    return-void

    .line 98
    .restart local p1
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/virtuallyabstract/eve/PlanInfo;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v1, planInfo:Landroid/content/Intent;
    const-string v3, "plan"

    iget-object v4, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->planToInt:Ljava/util/ArrayList;

    const/4 v5, 0x1

    sub-int v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v3, "time"

    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "time"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    const-string v3, "intelligence"

    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "intelligence"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 103
    const-string v3, "memory"

    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "memory"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 104
    const-string v3, "charisma"

    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "charisma"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 105
    const-string v3, "willpower"

    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "willpower"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 106
    const-string v3, "perception"

    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "perception"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 107
    iget-object v3, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 108
    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/SkillPlanner;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureID"
    .parameter "item"

    .prologue
    .line 75
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Add fake plans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->name:Ljava/lang/String;

    const-string v2, "TestPlan1"

    const-string v3, "3732,3731"

    invoke-virtual {v0, v1, v2, v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->addPlan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->name:Ljava/lang/String;

    const-string v2, "TestPlan2"

    const-string v3, "12241,3373"

    invoke-virtual {v0, v1, v2, v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->addPlan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->populatePlans()V

    .line 81
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Test Dialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 146
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 147
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/SkillPlanner;->populatePlans()V

    .line 148
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 153
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 154
    return-void
.end method
